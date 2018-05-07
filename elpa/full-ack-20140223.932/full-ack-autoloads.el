;;; full-ack-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "full-ack" "full-ack.el" (0 0 0 0))
;;; Generated autoloads from full-ack.el

(autoload 'ack-same "full-ack" "\
Run ack with --type matching the current `major-mode'.\nThe types of files searched are determined by `ack-mode-type-alist' and\n`ack-mode-extension-alist'.  If no type is configured the buffer's file\nextension is used for the search.\nPATTERN is interpreted as a regular expression, iff REGEXP is non-nil.  If\ncalled interactively, the value of REGEXP is determined by `ack-search-regexp'.\nA prefix arg toggles that value.\nDIRECTORY is the root directory.  If called interactively, it is determined by\n`ack-project-root-file-patterns'.  The user is only prompted, if\n`ack-prompt-for-directory' is set.\n\n(fn PATTERN &optional REGEXP DIRECTORY)" t nil)

(autoload 'ack "full-ack" "\
Run ack.\nPATTERN is interpreted as a regular expression, iff REGEXP is non-nil.  If\ncalled interactively, the value of REGEXP is determined by `ack-search-regexp'.\nA prefix arg toggles that value.\nDIRECTORY is the root directory.  If called interactively, it is determined by\n`ack-project-root-file-patterns'.  The user is only prompted, if\n`ack-prompt-for-directory' is set.\n\n(fn PATTERN &optional REGEXP DIRECTORY)" t nil)

(autoload 'ack-find-same-file "full-ack" "\
Prompt to find a file found by ack in DIRECTORY.\n\n(fn &optional DIRECTORY)" t nil)

(autoload 'ack-find-file "full-ack" "\
Prompt to find a file found by ack in DIRECTORY.\n\n(fn &optional DIRECTORY)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "full-ack" '("ack-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; full-ack-autoloads.el ends here
