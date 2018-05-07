;;; nlinum-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "nlinum" "nlinum.el" (0 0 0 0))
;;; Generated autoloads from nlinum.el

(autoload 'nlinum-mode "nlinum" "\
Toggle display of line numbers in the left margin (Linum mode).\nWith a prefix argument ARG, enable Linum mode if ARG is positive,\nand disable it otherwise.  If called from Lisp, enable the mode\nif ARG is omitted or nil.\n\nLinum mode is a buffer-local minor mode.\n\n(fn &optional ARG)" t nil)

(defvar global-nlinum-mode nil "\
Non-nil if Global Nlinum mode is enabled.\nSee the `global-nlinum-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `global-nlinum-mode'.")

(custom-autoload 'global-nlinum-mode "nlinum" nil)

(autoload 'global-nlinum-mode "nlinum" "\
Toggle Nlinum mode in all buffers.\nWith prefix ARG, enable Global Nlinum mode if ARG is positive;\notherwise, disable it.  If called from Lisp, enable the mode if\nARG is omitted or nil.\n\nNlinum mode is enabled in all buffers where\n`(lambda nil (unless (minibufferp) (nlinum-mode)))' would do it.\nSee `nlinum-mode' for more information on Nlinum mode.\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "nlinum" '("nlinum-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; nlinum-autoloads.el ends here
