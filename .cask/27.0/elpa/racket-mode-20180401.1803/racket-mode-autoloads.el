;;; racket-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "racket-bug-report" "racket-bug-report.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from racket-bug-report.el

(autoload 'racket-bug-report "racket-bug-report" "\
Fill a buffer with data to make a racket-mode bug report.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "racket-bug-report" '("racket--source-dir")))

;;;***

;;;### (autoloads nil "racket-collection" "racket-collection.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from racket-collection.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "racket-collection" '("racket-")))

;;;***

;;;### (autoloads nil "racket-common" "racket-common.el" (0 0 0 0))
;;; Generated autoloads from racket-common.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "racket-common" '("racket-")))

;;;***

;;;### (autoloads nil "racket-complete" "racket-complete.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from racket-complete.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "racket-complete" '("racket-")))

;;;***

;;;### (autoloads nil "racket-custom" "racket-custom.el" (0 0 0 0))
;;; Generated autoloads from racket-custom.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "racket-custom" '("racket-" "defface-racket")))

;;;***

;;;### (autoloads nil "racket-edit" "racket-edit.el" (0 0 0 0))
;;; Generated autoloads from racket-edit.el

(add-to-list 'hs-special-modes-alist '(racket-mode "(" ")" ";" nil nil))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "racket-edit" '("racket-")))

;;;***

;;;### (autoloads nil "racket-font-lock" "racket-font-lock.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from racket-font-lock.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "racket-font-lock" '("racket-")))

;;;***

;;;### (autoloads nil "racket-imenu" "racket-imenu.el" (0 0 0 0))
;;; Generated autoloads from racket-imenu.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "racket-imenu" '("racket--")))

;;;***

;;;### (autoloads nil "racket-indent" "racket-indent.el" (0 0 0 0))
;;; Generated autoloads from racket-indent.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "racket-indent" '("racket-")))

;;;***

;;;### (autoloads nil "racket-keywords-and-builtins" "racket-keywords-and-builtins.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from racket-keywords-and-builtins.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "racket-keywords-and-builtins" '("racket-")))

;;;***

;;;### (autoloads nil "racket-logger" "racket-logger.el" (0 0 0 0))
;;; Generated autoloads from racket-logger.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "racket-logger" '("racket-")))

;;;***

;;;### (autoloads nil "racket-make-doc" "racket-make-doc.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from racket-make-doc.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "racket-make-doc" '("racket-make-doc/")))

;;;***

;;;### (autoloads nil "racket-mode" "racket-mode.el" (0 0 0 0))
;;; Generated autoloads from racket-mode.el

(autoload 'racket-mode "racket-mode" "\
Major mode for editing Racket.\n\\{racket-mode-map}\n\n(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.rkt[dl]?\\'" . racket-mode))

(modify-coding-system-alist 'file "\\.rkt[dl]?\\'" 'utf-8)

(add-to-list 'interpreter-mode-alist '("racket" . racket-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "racket-mode" '("racket-")))

;;;***

;;;### (autoloads nil "racket-ppss" "racket-ppss.el" (0 0 0 0))
;;; Generated autoloads from racket-ppss.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "racket-ppss" '("racket--ppss-")))

;;;***

;;;### (autoloads nil "racket-profile" "racket-profile.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from racket-profile.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "racket-profile" '("racket-")))

;;;***

;;;### (autoloads nil "racket-repl" "racket-repl.el" (0 0 0 0))
;;; Generated autoloads from racket-repl.el

(autoload 'racket-repl "racket-repl" "\
Run the Racket REPL and display its buffer in some window.\n\nIf the Racket process is not already running, it is started.\n\nIf NOSELECT is not nil, does not select the REPL\nwindow (preserves the originally selected window).\n\nCommands that don't want the REPL to be displayed can instead use\n`racket--repl-ensure-buffer-and-process'.\n\n(fn &optional NOSELECT)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "racket-repl" '("racket-" "with-racket-repl-buffer")))

;;;***

;;;### (autoloads nil "racket-tests" "racket-tests.el" (0 0 0 0))
;;; Generated autoloads from racket-tests.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "racket-tests" '("racket-tests/")))

;;;***

;;;### (autoloads nil "racket-unicode-input-method" "racket-unicode-input-method.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from racket-unicode-input-method.el

(autoload 'racket-unicode-input-method-enable "racket-unicode-input-method" "\
Set input method to `racket-unicode`.\n\nThe `racket-unicode` input method lets you easily type various\nUnicode symbols that might be useful when writing Racket\ncode.\n\nTo automatically enable the `racket-unicode` input method in\n`racket-mode` buffers use `M-x customize-variable <RET>\nracket-mode-hook` or put the following code in your Emacs init\nfile:\n\n    (add-hook 'racket-mode-hook #'racket-unicode-input-method-enable)\n\nLikewise for `racket-repl-mode` buffers:\n\n    (add-hook 'racket-repl-mode-hook #'racket-unicode-input-method-enable)\n\nTo temporarily enable this input method for a single buffer you\ncan use `M-x racket-unicode-input-method-enable`.\n\nUse `C-\\` to toggle the input method.\n\nWhen the `racket-unicode` input method is active, you can for\nexample type `All` and it is immediately replaced with `∀`. A few\nother examples:\n\n    omega     ω\n    x_1       x₁\n    x^1       x¹\n    |A|       𝔸\n    test-->>E test-->>∃ (racket/redex)\n\nTo see a table of all key sequences use `M-x\ndescribe-input-method <RET> racket-unicode`.\n\nIf you don’t like the highlighting of partially matching tokens you\ncan turn it off by setting `input-method-highlight-flag' to nil via\n`M-x customize-variable`.\n\n(fn)" t nil)

;;;***

;;;### (autoloads nil "racket-util" "racket-util.el" (0 0 0 0))
;;; Generated autoloads from racket-util.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "racket-util" '("racket--")))

;;;***

;;;### (autoloads nil nil ("racket-mode-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; racket-mode-autoloads.el ends here
