;;; jedi-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "jedi" "jedi.el" (0 0 0 0))
;;; Generated autoloads from jedi.el

(autoload 'jedi:ac-setup "jedi" "\
Add Jedi AC sources to `ac-sources'.\n\nIf auto-completion is all you need, you can call this function instead\nof `jedi:setup', like this::\n\n   (add-hook 'python-mode-hook 'jedi:ac-setup)\n\nNote that this function calls `auto-complete-mode' if it is not\nalready enabled, for people who don't call `global-auto-complete-mode'\nin their Emacs configuration.\n\n(fn)" t nil)

(autoload 'jedi:complete "jedi" "\
Complete code at point.\n\n(fn &key (EXPAND ac-expand-on-auto-complete))" t nil)

(autoload 'jedi:auto-complete-mode "jedi" "\
\n\n(fn)" nil nil)

(setq jedi:setup-function #'jedi:ac-setup jedi:mode-function #'jedi:auto-complete-mode)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "jedi" '("jedi:")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; jedi-autoloads.el ends here
