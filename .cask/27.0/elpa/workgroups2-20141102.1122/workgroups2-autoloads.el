;;; workgroups2-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "workgroups2" "workgroups2.el" (0 0 0 0))
;;; Generated autoloads from workgroups2.el

(autoload 'workgroups-mode "workgroups2" "\
Turn `workgroups-mode' on and off.\nARG is nil - toggle\nARG >= 1   - turn on\nARG == 0   - turn off\nARG is anything else, turn on `workgroups-mode'.\n\n(fn &optional ARG)" t nil)

(autoload 'wg-help "workgroups2" "\
Just call `apropos-command' on \"^wg-\".\nThere used to be a bunch of help-buffer construction stuff here,\nincluding a `wg-help' variable that basically duplicated every\ncommand's docstring;  But why, when there's `apropos-command'?\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "workgroups2" '("workgroups-mode" "wg-" "buffer-list")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; workgroups2-autoloads.el ends here
