;;; pymacs-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "pymacs" "pymacs.el" (0 0 0 0))
;;; Generated autoloads from pymacs.el

(autoload 'pymacs-load "pymacs" "\
Import the Python module named MODULE into Emacs.\nEach function in the Python module is made available as an Emacs function.\nThe Lisp name of each function is the concatenation of PREFIX with\nthe Python name, in which underlines are replaced by dashes.  If PREFIX is\nnot given, it defaults to MODULE followed by a dash.\nIf NOERROR is not nil, do not raise error when the module is not found.\n\n(fn MODULE &optional PREFIX NOERROR)" t nil)

(autoload 'pymacs-autoload "pymacs" "\
Pymacs's equivalent of the standard emacs facility `autoload'.\nDefine FUNCTION to autoload from Python MODULE using PREFIX.\nIf PREFIX is not given, it defaults to MODULE followed by a dash.\nOptional DOCSTRING documents FUNCTION until it gets loaded.\nINTERACTIVE is normally the argument to the function `interactive',\nt means `interactive' without arguments, nil means not interactive,\nwhich is the default.\n\n(fn FUNCTION MODULE &optional PREFIX DOCSTRING INTERACTIVE)" nil nil)

(autoload 'pymacs-eval "pymacs" "\
Compile TEXT as a Python expression, and return its value.\n\n(fn TEXT)" t nil)

(autoload 'pymacs-exec "pymacs" "\
Compile and execute TEXT as a sequence of Python statements.\nThis functionality is experimental, and does not appear to be useful.\n\n(fn TEXT)" t nil)

(autoload 'pymacs-call "pymacs" "\
Return the result of calling a Python function FUNCTION over ARGUMENTS.\nFUNCTION is a string denoting the Python function, ARGUMENTS are separate\nLisp expressions, one per argument.  Immutable Lisp constants are converted\nto Python equivalents, other structures are converted into Lisp handles.\n\n(fn FUNCTION &rest ARGUMENTS)" nil nil)

(autoload 'pymacs-apply "pymacs" "\
Return the result of calling a Python function FUNCTION over ARGUMENTS.\nFUNCTION is a string denoting the Python function, ARGUMENTS is a list of\nLisp expressions.  Immutable Lisp constants are converted to Python\nequivalents, other structures are converted into Lisp handles.\n\n(fn FUNCTION ARGUMENTS)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "pymacs" '("pymacs-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; pymacs-autoloads.el ends here
