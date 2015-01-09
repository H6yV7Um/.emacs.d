;;; python env
(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)
(add-hook 'python-mode-hook
          (lambda ()
            (set-fill-column 80)))
(add-hook 'python-mode-hook
          (lambda ()
            (unless (eq buffer-file-name nil) (flymake-mode t))
            (local-set-key (kbd "M-n") 'flymake-goto-next-error)
            (local-set-key (kbd "M-p") 'flymake-goto-prev-error)
	    ))

(add-to-list "~/.emacs.d/lisp/python-mode-6.1.1")
(require 'python-mode)
(add-hook 'python-mode-hook
	  (lambda ()
	    (setq indent-tabs-mode t)
	    (setq tab-width 4)
	    (setq python-indent 4)))
;;;remove trailing whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)
;;; try to automagically figure out indentation
(setq py-smart-indentation t)
;; use the wx backend, for both mayavi and matplotlib
(setq py-python-command-args
      '("--gui=wx" "--pylab=wx" "-colors" "Linux"))
(setq py-force-py-shell-name-p t)
;;; rope
(add-to-list 'load-path "~/.emacs.d/lisp/pymacs-0.25")
(require 'pymacs)
(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-autoimport t)
;;; jedi
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:setup-keys t)
(setq jedi:complete-on-dot t)

;; pep8
(when (load "flymake" t)
  (defun flymake-pylint-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
		       'flymake-create-temp-inplace))
	   (local-file (file-relative-name
			temp-file
			(file-name-directory buffer-file-name))))
      (list "pep8" (list "--repeat" local-file))))

;; (when (load "flymake" t)
;;   (defun flymake-pylint-init ()
;;     (let* ((temp-file (flymake-init-create-temp-buffer-copy
;; 		       'flymake-create-temp-inplace))
;;            (local-file (file-relative-name
;;                         temp-file
;;                         (file-name-directory buffer-file-name))))
;;       (list "epylint" (list local-file))))

;;    (add-to-list 'flymake-allowed-file-name-masks
;;                '("\\.py\\'" flymake-pylint-init)))

;; (when (load "flymake" t)
;;   (defun flymake-pyflakes-init ()
;;     (when (not (subsetp (list (current-buffer)) (tramp-list-remote-buffers)))
;;       (let* ((temp-file (flymake-init-create-temp-buffer-copy
;;                          'flymake-create-temp-inplace))
;;              (local-file (file-relative-name
;;                           temp-file
;;                           (file-name-directory buffer-file-name))))
;;         (list "pyflakes" (list local-file)))))

;;   (add-to-list 'flymake-allowed-file-name-masks
;;                '("\\.py\\'" flymake-pyflakes-init)))

;; (add-to-list 'flymake-allowed-file-name-masks
	       ;; '("\\.py\\'" flymake-pylint-init)))

;; (defun my-flymake-show-help ()
;;   (when (get-char-property (point) 'flymake-overlay)
;;     (let ((help (get-char-property (point) 'help-echo)))
;;       (if help (message "%s" help)))))

;; (add-hook 'post-command-hook 'my-flymake-show-help)

(provide 'init-python)
