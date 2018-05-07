;;; javascript env
(setq js-indent-level 2)
(require 'js2-refactor)
(add-hook 'js2-mode-hook #'js2-refactor-mode)
(js2r-add-keybindings-with-prefix "C-c C-j")
(provide 'init-javascript)
