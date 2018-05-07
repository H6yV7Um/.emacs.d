;;; python-pep8-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "python-pep8" "python-pep8.el" (0 0 0 0))
;;; Generated autoloads from python-pep8.el

(autoload 'python-pep8 "python-pep8" "\
Run PEP8, and collect output in a buffer.\nWhile pep8 runs asynchronously, you can use \\[next-error] (M-x next-error),\nor \\<python-pep8-mode-map>\\[compile-goto-error] in the grep output buffer, to go to the lines where pep8 found matches.\n\n(fn)" t nil)

(defalias 'pep8 'python-pep8)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "python-pep8" '("python-pep8-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; python-pep8-autoloads.el ends here
