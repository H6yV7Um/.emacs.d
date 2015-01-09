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

; programming languages
(require 'init-php)
(require 'init-python)
(require 'init-erlang)
(require 'init-scheme)
;(require 'init-common-lisp)

; programming tools
(require 'init-web)
(require 'init-thrift)
;(require 'init-spec)
(require 'init-slime)
(require 'init-git)
(require 'init-flymake)
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

; custom functions
(require 'init-functions-and-binds)
;;; .emacs ends here
(put 'erase-buffer 'disabled nil)
