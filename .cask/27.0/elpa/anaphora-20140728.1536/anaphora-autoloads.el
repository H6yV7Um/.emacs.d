;;; anaphora-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "anaphora" "anaphora.el" (0 0 0 0))
;;; Generated autoloads from anaphora.el

(let ((loads (get 'anaphora 'custom-loads))) (if (member '"anaphora" loads) nil (put 'anaphora 'custom-loads (cons '"anaphora" loads))))

(defvar anaphora-use-long-names-only nil "\
Use only long names such as `anaphoric-if' instead of traditional `aif'.")

(custom-autoload 'anaphora-use-long-names-only "anaphora" t)

(defun anaphora--install-traditional-aliases (&optional arg) "\
Install traditional short aliases for anaphoric macros.\n\nWith negative numeric ARG, remove traditional aliases." (let ((syms '((if . t) (prog1 . t) (prog2 . t) (when . when) (while . t) (and . t) (cond . cond) (lambda . lambda) (block . block) (case . case) (ecase . ecase) (typecase . typecase) (etypecase . etypecase) (let . let) (+ . t) (- . t) (* . t) (/ . t)))) (cond ((and (numberp arg) (< arg 0)) (dolist (cell syms) (when (ignore-errors (eq (symbol-function (intern-soft (format "a%s" (car cell)))) (intern-soft (format "anaphoric-%s" (car cell))))) (fmakunbound (intern (format "a%s" (car cell))))))) (t (dolist (cell syms) (let* ((builtin (car cell)) (traditional (intern (format "a%s" builtin))) (long (intern (format "anaphoric-%s" builtin)))) (defalias traditional long) (put traditional 'lisp-indent-function (get builtin 'lisp-indent-function)) (put traditional 'edebug-form-spec (cdr cell))))))))

(unless anaphora-use-long-names-only (anaphora--install-traditional-aliases))

(autoload 'anaphoric-if "anaphora" "\
Like `if', but the result of evaluating COND is bound to `it'.\n\nThe variable `it' is available within THEN and ELSE.\n\nCOND, THEN, and ELSE are otherwise as documented for `if'.\n\n(fn COND THEN &rest ELSE)" nil t)

(function-put 'anaphoric-if 'lisp-indent-function '2)

(autoload 'anaphoric-prog1 "anaphora" "\
Like `prog1', but the result of evaluating FIRST is bound to `it'.\n\nThe variable `it' is available within BODY.\n\nFIRST and BODY are otherwise as documented for `prog1'.\n\n(fn FIRST &rest BODY)" nil t)

(function-put 'anaphoric-prog1 'lisp-indent-function '1)

(autoload 'anaphoric-prog2 "anaphora" "\
Like `prog2', but the result of evaluating FORM2 is bound to `it'.\n\nThe variable `it' is available within BODY.\n\nFORM1, FORM2, and BODY are otherwise as documented for `prog2'.\n\n(fn FORM1 FORM2 &rest BODY)" nil t)

(function-put 'anaphoric-prog2 'lisp-indent-function '2)

(autoload 'anaphoric-when "anaphora" "\
Like `when', but the result of evaluating COND is bound to `it'.\n\nThe variable `it' is available within BODY.\n\nCOND and BODY are otherwise as documented for `when'.\n\n(fn COND &rest BODY)" nil t)

(function-put 'anaphoric-when 'lisp-indent-function '1)

(autoload 'anaphoric-while "anaphora" "\
Like `while', but the result of evaluating TEST is bound to `it'.\n\nThe variable `it' is available within BODY.\n\nTEST and BODY are otherwise as documented for `while'.\n\n(fn TEST &rest BODY)" nil t)

(function-put 'anaphoric-while 'lisp-indent-function '1)

(autoload 'anaphoric-and "anaphora" "\
Like `and', but the result of the previous condition is bound to `it'.\n\nThe variable `it' is available within all CONDITIONS after the\ninitial one.\n\nCONDITIONS are otherwise as documented for `and'.\n\nNote that some implementations of this macro bind only the first\ncondition to `it', rather than each successive condition.\n\n(fn &rest CONDITIONS)" nil t)

(autoload 'anaphoric-cond "anaphora" "\
Like `cond', but the result of each condition is bound to `it'.\n\nThe variable `it' is available within the remainder of each of CLAUSES.\n\nCLAUSES are otherwise as documented for `cond'.\n\n(fn &rest CLAUSES)" nil t)

(autoload 'anaphoric-lambda "anaphora" "\
Like `lambda', but the function may refer to itself as `self'.\n\nARGS and BODY are otherwise as documented for `lambda'.\n\n(fn ARGS &rest BODY)" nil t)

(function-put 'anaphoric-lambda 'lisp-indent-function 'defun)

(autoload 'anaphoric-block "anaphora" "\
Like `block', but the result of the previous expression is bound to `it'.\n\nThe variable `it' is available within all expressions of BODY\nexcept the initial one.\n\nNAME and BODY are otherwise as documented for `block'.\n\n(fn NAME &rest BODY)" nil t)

(function-put 'anaphoric-block 'lisp-indent-function '1)

(autoload 'anaphoric-case "anaphora" "\
Like `case', but the result of evaluating EXPR is bound to `it'.\n\nThe variable `it' is available within CLAUSES.\n\nEXPR and CLAUSES are otherwise as documented for `case'.\n\n(fn EXPR &rest CLAUSES)" nil t)

(function-put 'anaphoric-case 'lisp-indent-function '1)

(autoload 'anaphoric-ecase "anaphora" "\
Like `ecase', but the result of evaluating EXPR is bound to `it'.\n\nThe variable `it' is available within CLAUSES.\n\nEXPR and CLAUSES are otherwise as documented for `ecase'.\n\n(fn EXPR &rest CLAUSES)" nil t)

(function-put 'anaphoric-ecase 'lisp-indent-function '1)

(autoload 'anaphoric-typecase "anaphora" "\
Like `typecase', but the result of evaluating EXPR is bound to `it'.\n\nThe variable `it' is available within CLAUSES.\n\nEXPR and CLAUSES are otherwise as documented for `typecase'.\n\n(fn EXPR &rest CLAUSES)" nil t)

(function-put 'anaphoric-typecase 'lisp-indent-function '1)

(autoload 'anaphoric-etypecase "anaphora" "\
Like `etypecase', but result of evaluating EXPR is bound to `it'.\n\nThe variable `it' is available within CLAUSES.\n\nEXPR and CLAUSES are otherwise as documented for `etypecase'.\n\n(fn EXPR &rest CLAUSES)" nil t)

(function-put 'anaphoric-etypecase 'lisp-indent-function '1)

(autoload 'anaphoric-let "anaphora" "\
Like `let', but the content of VARLIST is bound to `it'.\n\nVARLIST as it appears in `it' is not evaluated.  The variable `it'\nis available within BODY.\n\nVARLIST and BODY are otherwise as documented for `let'.\n\n(fn VARLIST &rest BODY)" nil t)

(function-put 'anaphoric-let 'lisp-indent-function '1)

(autoload 'anaphoric-+ "anaphora" "\
Like `+', but the result of evaluating the previous expression is bound to `it'.\n\nThe variable `it' is available within all expressions after the\ninitial one.\n\nNUMBERS-OR-MARKERS are otherwise as documented for `+'.\n\n(fn &rest NUMBERS-OR-MARKERS)" nil t)

(autoload 'anaphoric-- "anaphora" "\
Like `-', but the result of evaluating the previous expression is bound to `it'.\n\nThe variable `it' is available within all expressions after the\ninitial one.\n\nNUMBER-OR-MARKER and NUMBERS-OR-MARKERS are otherwise as\ndocumented for `-'.\n\n(fn &optional NUMBER-OR-MARKER &rest NUMBERS-OR-MARKERS)" nil t)

(autoload 'anaphoric-* "anaphora" "\
Like `*', but the result of evaluating the previous expression is bound to `it'.\n\nThe variable `it' is available within all expressions after the\ninitial one.\n\nNUMBERS-OR-MARKERS are otherwise as documented for `*'.\n\n(fn &rest NUMBERS-OR-MARKERS)" nil t)

(autoload 'anaphoric-/ "anaphora" "\
Like `/', but the result of evaluating the previous divisor is bound to `it'.\n\nThe variable `it' is available within all expressions after the\nfirst divisor.\n\nDIVIDEND, DIVISOR, and DIVISORS are otherwise as documented for `/'.\n\n(fn DIVIDEND DIVISOR &rest DIVISORS)" nil t)

(autoload 'anaphoric-set "anaphora" "\
Like `set', except that the value of SYMBOL is bound to `it'.\n\nThe variable `it' is available within VALUE.\n\nSYMBOL and VALUE are otherwise as documented for `set'.\n\nNote that if this macro followed traditional naming for\nanaphoric expressions, it would conflict with the existing\n(quite different) function `aset'.\n\n(fn SYMBOL VALUE)" nil t)

(autoload 'anaphoric-setq "anaphora" "\
Like `setq', except that the value of SYM is bound to `it'.\n\nThe variable `it' is available within each VAL.\n\nARGS in the form [SYM VAL] ... are otherwise as documented for `setq'.\n\nNo alias `asetq' is provided, because it would be easily mistaken\nfor the pre-existing `aset', and because `anaphoric-setq' is not\nlikely to find frequent use.\n\n(fn &rest ARGS)" nil t)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "anaphora" '("anaphora-add-font-lock-keywords")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; anaphora-autoloads.el ends here
