;;; code template yasnippet
(add-to-list 'load-path "~/.emacs.d/lisp/yasnippet/")
(setq yas-snippet-dirs
      '("~/.emacs.d/lisp/yasnippet"
		"~/.emacs.d/lisp/yasnippet/yasmate"
		"~/.emacs.d/lisp/yasnippet/snippets"))
(require 'yasnippet)
(yas-global-mode 0)
(yas/minor-mode-on)
(add-hook 'term-mode-hook (lambda()
        (setq yas-dont-activate t)))
(provide 'init-yasnippet)
