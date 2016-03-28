(add-hook 'go-mode-hook
  (lambda ()
    (setq-default)
    (setq tab-width 2)
    (setq standard-indent 2)
    (setq indent-tabs-mode nil)))

(defun go-mode-setup ()
 (setq compile-command "go build -v && go test -v && go vet")
 (define-key (current-local-map) "\C-c\C-c" 'compile)
 (go-eldoc-setup)
 (setq gofmt-command "goimports")
 (add-hook 'before-save-hook #'gofmt-before-save)
 (local-set-key (kbd "M-.") 'godef-jump))

(add-hook 'go-mode-hook 'go-mode-setup)

;; (add-hook 'go-mode-hook (lambda ()
;;                           (local-set-key (kbd \"M-.\") 'godef-jump)))

;; (add-hook 'go-mode-hook (lambda ()
;; 			  (local-set-key (kbd \"C-.\") 'godef-jump)))

;; (add-hook 'go-mode-hook (lambda ()
			  ;; (local-unset-key 'godef-jump)))

(provide 'init-go)
