# -*- coding: utf-8 -*-

import json
import datetime
import logging
from pyramid.view import view_config

from earthshaker.validator import (
    validate,
    INT,
    STR,
    version_map,
    response,
    is_new_response_version,
)

from earthshaker.models import (
    DBSession,
    UserLogin,
    Restaurant,
    RestaurantFlavor,
    EntryRestaurant,
)

from earthshaker import (
    PATH,
)

from earthshaker.context import NAICHA_CONSUMER_KEY

from earthshaker.sdk2.ers.ttypes import ERSUserException

from earthshaker.utils import (
    response_for_list,
    response_for_info_list,
    zeus2_ers_thrift,
)

from earthshaker.dbutils import (
    get_by_id,
    response_for_paging_query,
    from_to_id,
)

from entry_service import (
    get_entry_id_by_geohash,
)

logger = logging.getLogger(__name__)


def query_favor_restaurant_ids(user_id, request):
    if user_id == UserLogin.GUEST_USER_ID:
        return []
    rst_ids = []
    f = lambda c: c.query_favor_ids(int(user_id))
    try:
        rst_ids = zeus2_ers_thrift(f, request)
    except Exception as e:
        logger.exception(e)
    return rst_ids


def restaurant_fuzzy_match(keyword, restaurants):
    keyword = keyword.lower()
    if len(keyword) == 0:
        return []
    result = []
    for r in restaurants:
        search = r.name
        if r.pinyin_name:
            search += r.pinyin_name
        rate = len(set(keyword) & set(search)) / float(len(keyword))
        if rate >= 0.3:
            result.append((rate, r))
    result.sort(key=lambda r: r[0], reverse=True)
    return [r[1] for r in result]


@view_config(route_name=PATH.RESTAURANT_BOOK_SEARCHING,
             request_method='GET',
             renderer='json')
@validate({'keyword': STR,
           'entry_id': STR,
           'page_size': INT,
           'page_index': INT,
           'time': STR})
def book_search(request):
    params = request.params
    entry_id = int(params.get('entry_id'))
    deliver_time = params.get('time')
    if len(deliver_time) == 5:
        deliver_time = deliver_time + ':00'
    func = lambda c: c.query_bookable_by_entry(entry_id, deliver_time)
    try:
        ers_rsts = zeus2_ers_thrift(func, request)
    except ERSUserException, e:
        logger.exception(e)
        return response(e, request)
    result = filter_search_restaurants(ers_rsts, request)
    return response_for_info_list(Restaurant, result)


@validate({'keyword': STR,
           'geohash_id': STR,
           'page_size': INT,
           'page_index': INT})
def search_23(request):
    try:
        ers_rsts = get_restaurants_from_thrift(request)
    except ERSUserException as e:
        return response(e, request)
    result = filter_search_restaurants(ers_rsts, request)
    return response_for_info_list(Restaurant, result)


@validate({'keyword': STR,
           'entry_id': INT,
           'page_size': INT,
           'page_index': INT})
def search_2(request):
    params = request.params
    entry_id = int(params.get('entry_id'))
    func = lambda c: c.query_by_entry(entry_id)
    try:
        ers_rsts = zeus2_ers_thrift(func, request)
    except ERSUserException as e:
        logger.exception(e)
        return response(e, request)
    ers_rsts = filter(lambda r: r.total_status == 1, ers_rsts)
    result = filter_search_restaurants(ers_rsts, request)
    return response_for_info_list(Restaurant, result)


def filter_search_restaurants(ers_rsts, request):
    keyword = request.params.get('keyword').lower()
    filter_func = lambda r: \
        (r.name + (r.pinyin_name or '')).find(keyword) != -1
    f, t = from_to_id(request.params)
    filter_rsts = filter(filter_func, ers_rsts)
    if filter_rsts:
        rsts = filter_rsts[f:t]
    else:
        rsts = restaurant_fuzzy_match(keyword, ers_rsts)[f:t]
    result = []
    for r in rsts:
        rst = Restaurant().deserialize(r)
        rst.version = request.params.get('version')
        result.append(rst)
    return result


@view_config(route_name=PATH.RESTAURANT_SEARCHING,
             request_method='GET',
             renderer='json')
@version_map({'2': search_2, '2.3': search_23})
@validate({'keyword': STR, 'entry_id': INT})
def search(request):
    params = request.params
    keyword = request.params.get('keyword').encode('utf-8').lower()
    field = Restaurant.pinyin_name if keyword.isalpha() else Restaurant.name
    conditions = [
        field.like('%%%s%%' % keyword),
        EntryRestaurant.entry_id == params.get('entry_id'),
        EntryRestaurant.restaurant_id == Restaurant.id]
    return response_for_paging_query(Restaurant, params, conditions=conditions)


def check_is_favored(restaurant_id, restaurant, request):
    user_id = request.params.get('user_id')
    if user_id:
        ids = query_favor_restaurant_ids(user_id, request)
        restaurant.is_favored = restaurant_id in ids


def get_deliver_amount(restaurant_id, request):
    deliver_amount = 0
    entry_id = request.params.get('entry_id')
    geohash = request.params.get('geohash_id')
    if not (entry_id or geohash):
        return deliver_amount
    if entry_id:
        entry_id = int(entry_id)
    elif geohash:
        geohash = int(geohash)
        entry_id = get_entry_id_by_geohash(geohash, request)

    if entry_id:
        f = lambda c: c.get_deliver_amount_by_entry(restaurant_id, entry_id)
    else:
        f = lambda c: c.get_deliver_amount_by_geohash(restaurant_id, geohash)

    logger.info('deliver_amount rst_id: %s, geohash: %s, entry_id: %s',
                restaurant_id, geohash, entry_id)
    try:
        deliver_amount = zeus2_ers_thrift(f, request)
    except Exception as e:
        logger.exception(e)
    return deliver_amount


@validate({'restaurant_id': INT})
def get_2(request):
    restaurant_id = int(request.params.get('restaurant_id'))
    try:
        ers_rst = zeus2_ers_thrift(lambda c: c.get(restaurant_id), request)
        restaurant = Restaurant().deserialize(ers_rst)
        deliver_amount = get_deliver_amount(restaurant_id, request)
        if deliver_amount:
            restaurant.min_deliver_amount = deliver_amount
        restaurant.version = request.params.get('version')
        check_is_favored(restaurant_id, restaurant, request)
        return response_for_info_list(Restaurant, [restaurant])
    except Exception as e:
        logger.exception(e)
        return response(e, request)


@view_config(route_name=PATH.RESTAURANT, request_method='GET', renderer='json')
@version_map({'2': get_2})
@validate({'restaurant_id': INT})
def get(request):
    restaurant_id = request.params.get('restaurant_id')
    restaurant = get_by_id(Restaurant, restaurant_id)
    check_is_favored(restaurant_id, restaurant, request)
    return response_for_list(Restaurant, [restaurant])


def restaurant_is_ok_by_flavor(restaurant, flavor):
    flavors = DBSession.query(RestaurantFlavor.flavor_name). \
        filter(RestaurantFlavor.restaurant_id == restaurant.id). \
        all()
    if not flavors:
        return False
    flavors = reduce(lambda a, b: a + b, flavors)
    if set(flavor.split(',')).intersection(set(flavors)):
        restaurant.flavors = ','.join(flavors)
        return True
    return False


def hack_flavor(value):
    #hack for flavor '奶茶汉堡', 客户端2.5之前是写死的'奶茶汉堡', 但是现在
    #奶茶和汉堡是两个分类, 所以需要在服务器端修正一下这个filter
    return u'奶茶,汉堡,奶茶汉堡' if value == u'奶茶汉堡' else value


contains = lambda f, v, fn: fn(i in f for i in v.split(','))

FILTER_MAP = {
    'flavors': lambda f, v: contains(f, hack_flavor(v), any),
    'min_deliver_amount': lambda f, v: float(f) <= float(v),
    'activities': lambda f, v: contains(f, v, all)
}


def restaurant_is_ok_by_field(restaurant, field, params):
    if field == 'flavors' \
            and params.get('consumer_key') == NAICHA_CONSUMER_KEY:
        # 奶茶应用需要另外的过滤逻辑
        return restaurant_is_ok_by_flavor(restaurant, params.get(field))
    if not hasattr(restaurant, field):
        return False
    value = params.get(field)
    if not value:
        return True
    return FILTER_MAP[field](getattr(restaurant, field), value)


def restaurant_is_ok(restaurant, fields, params):
    for field in fields:
        if not restaurant_is_ok_by_field(restaurant, field, params):
            return False
    return True


def after_filter(restaurants, filter_fields, params):
    result = []
    for r in restaurants:
        if restaurant_is_ok(r, filter_fields, params):
            result.append(r)
    return result


def filter_restaurants_by_conditions(restaurants, params):
    filter_fields = set(params.keys()).intersection(set(FILTER_MAP.keys()))
    restaurants = [Restaurant().deserialize(r) for r in restaurants]
    result = restaurants if not filter_fields else after_filter(restaurants,
                                                                filter_fields,
                                                                params)
    for r in result:
        r.version = params.get('version')
        r.is_favored = False
    return result


def get_ids_in_tuple(restaurant_ids):
    ids = tuple(int(id) for id in restaurant_ids[1:-1].split(','))
    return ids


def get_page_result(objects, params):
    length, page_size = len(objects), int(params.get('page_size'))
    return objects[:min(length, page_size)]


def filter_ids(restaurants, params):
    restaurant_ids = get_ids_in_tuple(params.get('ids'))
    restaurants = filter(lambda r: r.id not in restaurant_ids, restaurants)
    return get_page_result(restaurants, params)


def get_first_page_restaurants(restaurants, request):
    favors, not_favors = [], []
    user_id = int(request.params.get('user_id'))
    favor_ids = query_favor_restaurant_ids(user_id, request)
    for r in restaurants:
        is_favored = r.id in favor_ids
        if float(request.params.get('version') or 0) >= 2.6:
            is_favored = is_favored and \
                r.total_status == Restaurant.STATUS_OPEN
        (not_favors, favors)[is_favored].append(r)
    for r in favors:
        r.is_favored = True
    favors += not_favors
    return get_page_result(favors, request.params)


def total_status(t_restaurant):
    if t_restaurant.busy_level == Restaurant.BUSY_LEVEL_CLOSED:
        return Restaurant.TOTAL_STATUS_CLOSED
    if t_restaurant.busy_level == Restaurant.BUSY_LEVEL_HOLIDAY:
        return Restaurant.TOTAL_STATUS_HOLIDAY
    if not t_restaurant.is_in_serving_time:
        if t_restaurant.is_now_bookable:
            return Restaurant.TOTAL_STATUS_BOOKONLY
        return Restaurant.TOTAL_STATUS_RESTING
    if t_restaurant.order_mode in \
        (Restaurant.ORDER_MODE_ELEME,
         Restaurant.ORDER_MODE_NETWORK,
         Restaurant.ORDER_MODE_TPD,
         Restaurant.ORDER_MODE_WIRELESS_PRINTER):
        if t_restaurant.busy_level ==\
                Restaurant.BUSY_LEVEL_NETWORK_UNSTABLE:
            return Restaurant.TOTAL_STATUS_NETWORK_UNSTABLE
        return Restaurant.TOTAL_STATUS_OPEN
    return Restaurant.TOTAL_STATUS_ORDER_BY_PHONE


def is_in_serving_time(t_restaurant):
    now = datetime.datetime.now()
    index = now.hour * 12 + now.minute / 5
    return int(t_restaurant.open_time_bitmap[index])


def is_now_bookable(t_restaurant):
    now = datetime.datetime.now()
    return 6 <= now.hour < 23 and \
        '1' in t_restaurant.book_time_bitmap[now.hour * 12 +
                                             (now.minute + 30) / 5:]


def get_restaurants_from_thrift(request):

    def query_restaurants():
        deliver_time = request.params.get('time')
        if deliver_time and len(deliver_time) == 5:
            deliver_time = '%s:00' % deliver_time
        geohash = int(request.params.get('geohash_id'))
        logger.info('geohash:%s, deliver_time: %s', geohash, deliver_time)
        f = (lambda c: c.query_by_geohash2(geohash, 0, 1000)) \
            if not deliver_time else \
            (lambda c: c.query_bookable_by_geohash2(geohash, deliver_time))
        restaurants = zeus2_ers_thrift(f, request)
        for r in restaurants:
            r.total_status = total_status(r)
        return restaurants

    def filter_restaurants(restaurants, is_version_over_26):
        filter_status = Restaurant.CLIENT_STATUS_AFTER_26 \
            if is_version_over_26 else [Restaurant.STATUS_OPEN]
        f = lambda r: r.total_status in filter_status and \
            r.id != Restaurant.NUO_XIN_ID
        return filter(f, restaurants)

    def sort_restaurants(restaurants):
        is_opened = lambda c: c.total_status == Restaurant.STATUS_OPEN
        cmp_by_open = lambda r1, r2: is_opened(r1) - is_opened(r2)
        restaurants.sort(cmp=cmp_by_open, reverse=True)
        return restaurants

    restaurants = query_restaurants()
    logger.info([(r.id, r.total_status) for r in restaurants])
    is_version_over_26 = float(request.params.get('version') or 0) >= 2.6

    deliver_time = request.params.get('time')
    if not deliver_time:
        restaurants = filter_restaurants(restaurants, is_version_over_26)
    # client contains bug of book restaurants before version 3.0
    if deliver_time and float(request.params.get('version') or 0) < 3.0:
        for r in restaurants:
            r.total_status = Restaurant.STATUS_OPEN
    # client fix
    for r in restaurants:
        r.min_deliver_amount = r.deliver_amount
    if is_version_over_26 and not deliver_time:
        restaurants = sort_restaurants(restaurants)
    return restaurants


# these colors come from google log
COLORS = ['115, 162, 239',  # G
          '255, 117, 99',  # o
          '255, 239, 8',  # o
          '115, 162, 139',  # g
          '90, 203, 90',  # l
          ]


def set_icons(restaurants, request):

    def get_icon(free_gift_activity):
        return {'id': free_gift_activity.icon_text,
                'color': COLORS[free_gift_activity.id % len(COLORS)],
                'text': free_gift_activity.desc}

    def get_gift_activities(attributes):
        f = lambda c: c.m_get_free_gift_activity_by_attributes(attributes)
        try:
            return zeus2_ers_thrift(f, request)
        except Exception as e:
            logger.info(e)
            return []

    attributes = []
    for r in restaurants:
        if r.attribute:
            try:
                attribute_names = json.loads(r.attribute).keys()
                r.attribute_names = attribute_names
                attributes += attribute_names
            except:
                pass
    attributes = set(attributes)
    gift_activities = get_gift_activities(attributes)
    mapping = {}
    for ga in gift_activities:
        mapping[ga.attribute_name] = ga
    for r in restaurants:
        if 'attributes' in r.__dict__ and r.attributes:
            for attribute in r.attributes:
                if attribute in mapping:
                    icon = get_icon(mapping[attribute])
                    r.add_icons(icon)


@view_config(route_name=PATH.GEO_RESTAURANTS,
             request_method='GET',
             renderer='json')
@validate({'geohash_id': STR, 'user_id': INT, 'page_index': INT,
           'page_size': INT})
def query(request):
    restaurants = get_restaurants_from_thrift(request)
    if not restaurants:
        return response_for_info_list(Restaurant, [])
    restaurants = filter_restaurants_by_conditions(restaurants,
                                                   request.params)
    if request.params.get('ids'):
        result = filter_ids(restaurants, request.params)
    # first page restaurants should set favor restaurants ahead
    else:
        result = get_first_page_restaurants(restaurants, request)
    # set icons here
    if is_new_response_version(request):
        set_icons(result, request)
    return response_for_info_list(Restaurant, result)
