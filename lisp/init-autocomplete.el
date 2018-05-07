(add-to-list 'load-path "~/.emacs.d/lisp/auto-complete")
(require 'auto-complete)
(add-to-list 'ac-dictionary-directories
	     "~/.emacs.d/lisp/auto-complete/dict")

;(defmacro after (mode &rest body)
 ; `(eval-after-load ,mode
  ;   '(progn ,@body)))

;(after 'auto-complete
 ;      (add-to-list 'ac-dictionary-directories "~/.emacs.d/dict")
  ;     (setq ac-use-menu-map t)
   ;    (define-key ac-menu-map "\C-n" 'ac-next)
    ;   (define-key ac-menu-map "\C-p" 'ac-previous))

;(after 'auto-complete-config
 ;      (ac-config-default)
  ;     (when (file-exists-p (expand-file-name "/Users/andy/.emacs.d/lisp/Pymacs"))
   ;      (ac-ropemacs-initialize)
    ;     (ac-ropemacs-setup)))

;(after 'auto-complete-autoloads
 ;      (autoload 'auto-complete-mode "auto-complete" "enable auto-complete-mode" t nil)
  ;     (add-hook 'python-mode-hook
   ;              (lambda ()
    ;               (require 'auto-complete-config)
     ;              (add-to-list 'ac-sources 'ac-source-ropemacs)
      ;             (auto-complete-mode))))

(require 'auto-complete-config)

(setq ac-config-default
      '(ac-source-filename
	ac-source-functions
	ac-source-yasnippet
	ac-source-variables
	ac-source-symbols
	ac-source-features
	ac-source-abbrev
	ac-source-words-in-same-mode-buffers
	ac-source-dictionary))
(ac-config-default)
(global-auto-complete-mode t)
(setq ac-auto-show-menu 0.2)
(setq ac-use-menu-map t)
(setq safe-local-variable-values (quote ((codeing . utf-8))))
(add-to-list 'ac-modes 'erlang-mode)
(provide 'init-autocomplete)
