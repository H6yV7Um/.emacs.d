;;; python-pylint-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "python-pylint" "python-pylint.el" (0 0 0 0))
;;; Generated autoloads from python-pylint.el

(autoload 'python-pylint "python-pylint" "\
Run PYLINT, and collect output in a buffer.\nWhile pylint runs asynchronously, you can use \\[next-error] (M-x next-error),\nor \\<python-pylint-mode-map>\\[compile-goto-error] in the grep output buffer, to go to the lines where pylint found matches.\n\n(fn)" t nil)

(defalias 'pylint 'python-pylint)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "python-pylint" '("python-pylint-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; python-pylint-autoloads.el ends here
