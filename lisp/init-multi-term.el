;;; multi-term
(add-to-list 'load-path "~/.emacs.d/lisp/multi-term")
(require 'multi-term)
(setq multi-term-program "/bin/zsh")
(setq multi-term-dedicated-select-after-open-p t)
(add-hook 'term-mode-hook
	  (lambda ()
	    (autopair-mode -1)))
(provide 'init-multi-term)
