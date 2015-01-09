(add-to-list 'load-path "~/.emacs.d/lisp/xml-rpc")
(require 'xml-rpc)
(add-to-list 'load-path "~/.emacs.d/lisp/metaweblog")
(require 'metaweblog)
(add-to-list 'load-path "~/.emacs.d/lisp/org2blog")
(require 'org2blog-autoloads)
(setq org2blog/wp-blog-alist
           '(
             ("Andear"
              :url "http://www.andear.me/xmlrpc.php"
              :username "Andy")))
(provide 'init-wordpress)
