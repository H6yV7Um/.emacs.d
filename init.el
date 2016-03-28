;;; Package:

; add lisp directory:
(add-to-list 'load-path "~/.emacs.d/lisp/")

; emacs related settings
(require 'init-package)
(require 'init-setting)
(require 'init-theme)
(require 'init-popup)
(require 'init-ido)
(require 'init-sr-speedbar)
(require 'init-multi-term)
(require 'init-ansi-term)
(require 'init-window-numbering)
(require 'init-linum)

; programming languages
(require 'init-php)
(require 'init-python)
(require 'init-erlang)
(require 'init-scheme)
(require 'init-javascript)
(require 'init-go)
;(require 'init-clojure)
;(require 'init-common-lisp)

; programming tools
(require 'init-web)
(require 'init-thrift)
;(require 'init-spec)
(require 'init-slime)
(require 'init-git)
(require 'init-flycheck)
(require 'init-autopair)
(require 'init-autocomplete)
(require 'init-yasnippet)
(require 'init-paredit)
(require 'init-acejump)
(require 'init-workgroup)
(require 'init-sql)
;; (require 'init-cedet)
;; (require 'init-ecb)

; edit
(require 'init-markdown)
(require 'init-org)
(require 'init-info)
(require 'init-w3m)

; useful tools
(require 'init-mew)
(require 'init-wanderlust)
(require 'init-jabber)
(require 'init-wordpress)
(require 'init-erc)
(require 'init-hackernews)
(require 'init-livedown)
(require 'init-plantuml)
(require 'init-flyspell)

; custom functions
(require 'init-functions-and-binds)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs-autosaves/" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs-autosaves/"))))
 '(custom-enabled-themes (quote (andear)))
 '(custom-safe-themes
   (quote
	("5bc053a1b4419725911afa5ef6f135a99abb610b608dd88481292dfe06349ffd" default)))
 '(erc-nick "andychen")
 '(erc-port 6667)
 '(erc-server "irc.elenet.me"))
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
