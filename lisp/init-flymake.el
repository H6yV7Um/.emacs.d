;;;flymake
(require 'flymake)
(add-to-list 'exec-path "/usr/local/bin/")
(add-hook 'find-file-hook 'flymake-find-file-hook)
(setq flymake-python-pyflakes-executable "flake8")
;;; Let's run 8 checks at once instead.
(setq flymake-max-parallel-syntax-checks 8)
;;; Nope, I want my copies in the system temp dir.
(setq flymake-run-in-place nil)
;;; This lets me say where my temp dir is.
(setq temporary-file-directory "~/.emacs.d/tmp/")
;;; flymake-cursor
(add-to-list 'load-path "~/.emacs.d/lisp/flymake-cursor")
(require 'flymake-cursor)
(provide 'init-flymake)
