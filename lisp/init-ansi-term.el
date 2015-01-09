;; (defun ash-term-hooks ()
;;   ;; dabbrev-expand in term
;;   (define-key term-raw-escape-map "/"
;;     (lambda ()
;;       (interactive)
;;       (let ((beg (point)))
;; 	(dabbrev-expand nil)
;; 	(kill-region beg (point)))
;;       (term-send-raw-string
;;        (substring-no-properties (current-kill 0)))))
;;   ;; yank in term (bound to C-c C-y)
;;   (define-key term-raw-escape-map "\C-y"
;;     (lambda ()
;;       (interactive)
;;       (term-send-raw-string (current-kill 0))))
;;   (setq term-default-bg-color (face-background 'default))
;;   (setq term-default-fg-color (face-foreground 'default)))

;; (add-hook 'term-mode-hook 'ash-term-hooks)
;; (add-hook 'term-mode-hook
;; 	  (lambda ()
;; 	    (yas-minor-mode -1)
	    ;; (autopair-mode -1)))
(provide 'init-ansi-term)
