;;; jabber
(add-to-list 'load-path "~/.emacs.d/lisp/emacs-jabber-0.8.0")
(setq jabber-account-list
     '(("andy.chen@ele.me"
	 (:network-server . "talk.google.com")
         (:password . "CiC123!@#")
	 (:connection-type . ssl))
	("chenyulong1@gmail.com"
	 (:network-server . "talk.google.com")
         (:password . "administrator")
	 (:connection-type . ssl))))

(require 'jabber-autoloads)
(require 'jabber-autoaway)
(setq jabber-alert-presence-message-function
    (lambda (who oldstatus newstatus statustext) nil))
(setq jabber-vcard-avatars-retrieve nil)
(setq jabber-roster-line-format " %c %-25n %u %-8s")
(setq fsm-debug nil)
(setq special-display-regexps
     '(("jabber-chat"
	 (width . 80)
	 (scroll-bar-width . 16)
	 (height . 15)
	 (tool-bar-lines . 0)
	 (menu-bar-lines 0)
	 (left . 80))))
(setq jabber-auto-reconnect nil)
(setq
  jabber-nickname "Andy"
  jabber-auto-reconnect t
  jabber-history-enabled t
  jabber-use-global-history nil
  jabber-backlog-number 40
  jabber-backlog-days 30)
(add-hook 'jabber-chat-mode-hook 'goto-address)
(defun jabber ()
 (interactive)
  (require 'jabber-autoloads)
 (define-key jabber-chat-mode-map [escape]
   'my-jabber-chat-delete-or-bury)
 (define-key mode-specific-map "jr"
   (lambda ()
     (interactive)
     (switch-to-buffer "*-jabber-*")))
 (define-key mode-specific-map "jc"
   '(lambda ()
      (interactive)
      (call-interactively 'jabber-connect)))
 (define-key mode-specific-map "jd"
   '(lambda ()
      (interactive)
      (call-interactively 'jabber-disconnect)))
 (define-key mode-specific-map "jj"
   '(lambda ()
      (interactive)
      (call-interactively 'jabber-chat-with)))
 (define-key mode-specific-map "ja"
   '(lambda ()
      (interactive)
      (jabber-send-presence "away" "" 10)))
 (define-key mode-specific-map "jo"
   '(lambda ()
      (interactive)
      (jabber-send-presence "" "" 10)))
 (define-key mode-specific-map "jx"
   '(lambda ()
      (interactive)
      (jabber-send-presence "xa" "" 10)))
 (jabber-connect))

;;; set faces
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(jabber-chat-prompt-foreign ((t (:foreground "keyboardFocusIndicatorColor" :weight bold))))
 '(jabber-chat-prompt-local ((t (:foreground "windowFrameColor" :weight bold))))
 '(jabber-chat-text-foreign ((t (:foreground "keyboardFocusIndicatorColor"))))
 '(jabber-roster-user-away ((t (:foreground "controlShadowColor" :slant italic :weight normal))))
 '(jabber-roster-user-online ((t (:foreground "alternateSelectedControlColor" :slant normal :weight bold))))
 '(linum ((t (:inherit (shadow default) :background "#3D3D3D" :foreground "disabledControlTextColor")))))

(provide 'init-jabber)
