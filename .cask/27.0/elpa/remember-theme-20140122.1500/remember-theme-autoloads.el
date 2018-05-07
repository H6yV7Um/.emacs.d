;;; remember-theme-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "remember-theme" "remember-theme.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from remember-theme.el

(autoload 'remember-theme-save "remember-theme" "\
Creates (or replaces) remember-theme-file (default ~/.emacs-theme), and stores the name of\n  the current Emacs theme, for retrieval by remember-theme-load\n\n(fn)" nil nil)

(autoload 'remember-theme-load "remember-theme" "\
Load the theme used last - This is stored in the\n  remember-theme-file. The last line of .emacs-theme is read as the\n  theme\n\n  remember-theme-file (default ~/.emacs-theme) is created by\n  remember-theme-save. Don't manually create or edit this file.\n\n  Currently enabled themes will be disabled and the theme in\n  remember-theme-file will be loaded.\n\n  If no remember-theme-file exists the operation is skipped, and\n  any currently loaded theme(s) will be left enabled.\n\n(fn)" nil nil)

(when load-file-name (add-hook 'after-init-hook 'remember-theme-load) (add-hook 'kill-emacs-hook 'remember-theme-save))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "remember-theme" '("remember-theme-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; remember-theme-autoloads.el ends here
