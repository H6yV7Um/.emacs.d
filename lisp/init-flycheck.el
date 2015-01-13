;;; Flycheck:

(add-hook 'after-init-hook #'global-flycheck-mode)
(global-set-key (kbd "M-p") 'flycheck-previous-error)
(global-set-key (kbd "M-n") 'flycheck-next-error)
(provide 'init-flycheck)
