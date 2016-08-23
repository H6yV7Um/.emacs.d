(require 'clojure-mode)
(require 'rainbow-delimiters)
;; (require 'smartparens)
; cider mode settings
;; (add-hook 'cider-mode-hook #'eldoc-mode)
;; (setq nrepl-log-messages t)
;; (setq cider-repl-tab-command #'indent-for-tab-command)
;; (setq cider-auto-select-error-buffer nil)
;; (setq cider-repl-display-in-current-window t)
;; (setq cider-repl-result-prefix ";; => ")
;; (setq cider-switch-to-repl-command #'cider-switch-to-current-repl-buffer)

; clojure mode settings
(add-hook 'clojure-mode-hook #'subword-mode)
(add-hook 'clojure-mode-hook #'paredit-mode)
;; (add-hook 'clojure-mode-hook #'smartparens-strict-mode)
(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
(provide 'init-clojure)
