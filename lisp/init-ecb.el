(add-to-list 'load-path "~/.emacs.d/lisp/ecb-snap")
(require 'ecb-autoloads)
(setq stack-trace-on-error nil) ;;don’t popup Backtrace window
(setq ecb-tip-of-the-day nil)
(setq ecb-primary-secondary-mouse-buttons (quote mouse-1–mouse-2))
(provide 'init-ecb)
