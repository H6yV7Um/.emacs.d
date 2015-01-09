;;; auto pair for () {} []...
(add-to-list 'load-path "~/.emacs.d/lisp/autopair")
(require 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers
(provide 'init-autopair)
