;;; python env

(push "~/.virtualenvs/default/bin" exec-path)
(setenv "PATH"
        (concat
         "~/.virtualenvs/default/bin" ":"
         (getenv "PATH")
         ))

(add-hook 'python-mode-hook
          (lambda ()
            (set-fill-column 80)))

(add-hook 'python-mode-hook #'flycheck-python-setup)

(defun flycheck-python-set-executables ()
  (let ((exec-path (python-shell-calculate-exec-path)))
    (setq flycheck-python-pylint-executable (executable-find "pylint")
          flycheck-python-flake8-executable (executable-find "flake8")))
  ;; Force Flycheck mode on
  (flycheck-mode))

(defun flycheck-python-setup ()
  (add-hook 'hack-local-variables-hook #'flycheck-python-set-executables
            nil 'local))

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

(add-to-list 'load-path "~/.emacs.d/lisp/Pymacs")
(require 'pymacs)
;(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-autoimport t)

;(autoload 'pymacs-apply "pymacs")
;(autoload 'pymacs-call "pymacs")
;(autoload 'pymacs-eval "pymacs" nil t)
;(autoload 'pymacs-exec "pymacs" nil t)
;(autoload 'pymacs-load "pymacs" nil t)

;;; jedi
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:setup-keys t)
(setq jedi:complete-on-dot t)

(provide 'init-python)
