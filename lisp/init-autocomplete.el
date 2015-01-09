(add-to-list 'load-path "~/.emacs.d/lisp/auto-complete")
(require 'auto-complete)
(add-to-list 'ac-dictionary-directories
	     "~/.emacs.d/lisp/auto-complete/dict")
(require 'auto-complete-config)
(setq ac-config-default
      '(ac-source-filename
	ac-source-functions
	ac-source-yasnippet
	ac-source-variables
	ac-source-symbols
	ac-source-features
	ac-source-abbrev
	ac-source-words-in-same-mode-buffers
	ac-source-dictionary))
(ac-config-default)
(global-auto-complete-mode t)
(setq ac-auto-show-menu 0.2)
(setq ac-use-menu-map t)
(setq safe-local-variable-values (quote ((codeing . utf-8))))
(add-to-list 'ac-modes 'erlang-mode)
(provide 'init-autocomplete)
