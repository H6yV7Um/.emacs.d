;;; cider-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "cider" "cider.el" (0 0 0 0))
;;; Generated autoloads from cider.el

(autoload 'cider-version "cider" "\
Display CIDER's version.\n\n(fn)" t nil)

(autoload 'cider-jack-in "cider" "\
Start an nREPL server for the current project and connect to it.\nIf PROMPT-PROJECT is t, then prompt for the project for which to\nstart the server.\nIf CLJS-TOO is non-nil, also start a ClojureScript REPL session with its\nown buffer.\n\n(fn &optional PROMPT-PROJECT CLJS-TOO)" t nil)

(autoload 'cider-jack-in-clojurescript "cider" "\
Start an nREPL server and connect to it both Clojure and ClojureScript REPLs.\nIf PROMPT-PROJECT is t, then prompt for the project for which to\nstart the server.\n\n(fn &optional PROMPT-PROJECT)" t nil)

(defalias 'cider-jack-in-cljs #'cider-jack-in-clojurescript)

(autoload 'cider-connect "cider" "\
Connect to an nREPL server identified by HOST and PORT.\nCreate REPL buffer and start an nREPL client connection.\n\nWhen the optional param PROJECT-DIR is present, the connection\ngets associated with it.\n\n(fn HOST PORT &optional PROJECT-DIR)" t nil)

(autoload 'cider-connect-clojurescript "cider" "\
Connect to a ClojureScript REPL.\n\nIt just delegates pretty much everything to `cider-connect' and just sets\nthe appropriate REPL type in the end.\n\n(fn)" t nil)

(defalias 'cider-connect-cljs #'cider-connect-clojurescript)

(eval-after-load 'clojure-mode '(progn (define-key clojure-mode-map (kbd "C-c M-j") #'cider-jack-in) (define-key clojure-mode-map (kbd "C-c M-J") #'cider-jack-in-clojurescript) (define-key clojure-mode-map (kbd "C-c M-c") #'cider-connect) (define-key clojure-mode-map (kbd "C-c M-C") #'cider-connect-clojurescript)))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider" '("cider-")))

;;;***

;;;### (autoloads nil "cider-apropos" "cider-apropos.el" (0 0 0 0))
;;; Generated autoloads from cider-apropos.el

(autoload 'cider-apropos "cider-apropos" "\
Show all symbols whose names match QUERY, a regular expression.\nQUERY can also be a list of space-separated words (e.g. take while) which\nwill be converted to a regular expression (like take.+while) automatically\nbehind the scenes.  The search may be limited to the namespace NS, and may\noptionally search doc strings (based on DOCS-P), include private vars\n(based on PRIVATES-P), and be case-sensitive (based on CASE-SENSITIVE-P).\n\n(fn QUERY &optional NS DOCS-P PRIVATES-P CASE-SENSITIVE-P)" t nil)

(autoload 'cider-apropos-documentation "cider-apropos" "\
Shortcut for (cider-apropos <query> nil t).\n\n(fn)" t nil)

(autoload 'cider-apropos-select "cider-apropos" "\
Similar to `cider-apropos', but presents the results in a completing read.\n\nShow all symbols whose names match QUERY, a regular expression.\nQUERY can also be a list of space-separated words (e.g. take while) which\nwill be converted to a regular expression (like take.+while) automatically\nbehind the scenes.  The search may be limited to the namespace NS, and may\noptionally search doc strings (based on DOCS-P), include private vars\n(based on PRIVATES-P), and be case-sensitive (based on CASE-SENSITIVE-P).\n\n(fn QUERY &optional NS DOCS-P PRIVATES-P CASE-SENSITIVE-P)" t nil)

(autoload 'cider-apropos-documentation-select "cider-apropos" "\
Shortcut for (cider-apropos-select <query> nil t).\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-apropos" '("cider-" "apropos-special-form")))

;;;***

;;;### (autoloads nil "cider-browse-ns" "cider-browse-ns.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from cider-browse-ns.el

(autoload 'cider-browse-ns "cider-browse-ns" "\
List all NAMESPACE's vars in BUFFER.\n\n(fn NAMESPACE)" t nil)

(autoload 'cider-browse-ns-all "cider-browse-ns" "\
List all loaded namespaces in BUFFER.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-browse-ns" '("cider-browse-ns-")))

;;;***

;;;### (autoloads nil "cider-browse-spec" "cider-browse-spec.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from cider-browse-spec.el

(autoload 'cider-browse-spec "cider-browse-spec" "\
Browse SPEC definition.\n\n(fn SPEC)" t nil)

(autoload 'cider-browse-spec-all "cider-browse-spec" "\
Open list of specs in a popup buffer.\n\nWith a prefix argument ARG, prompts for a regexp to filter specs.\nNo filter applied if the regexp is the empty string.\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-browse-spec" '("cider-")))

;;;***

;;;### (autoloads nil "cider-cheatsheet" "cider-cheatsheet.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from cider-cheatsheet.el

(autoload 'cider-cheatsheet "cider-cheatsheet" "\
Navigate `cider-cheatsheet-hierarchy' with `completing-read'.\n\nWhen you make it to a Clojure var its doc buffer gets displayed.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-cheatsheet" '("cider-cheatsheet-")))

;;;***

;;;### (autoloads nil "cider-classpath" "cider-classpath.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from cider-classpath.el

(autoload 'cider-classpath "cider-classpath" "\
List all classpath entries.\n\n(fn)" t nil)

(autoload 'cider-open-classpath-entry "cider-classpath" "\
Open a classpath entry.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-classpath" '("cider-classpath-")))

;;;***

;;;### (autoloads nil "cider-client" "cider-client.el" (0 0 0 0))
;;; Generated autoloads from cider-client.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-client" '("cider-")))

;;;***

;;;### (autoloads nil "cider-common" "cider-common.el" (0 0 0 0))
;;; Generated autoloads from cider-common.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-common" '("cider-")))

;;;***

;;;### (autoloads nil "cider-debug" "cider-debug.el" (0 0 0 0))
;;; Generated autoloads from cider-debug.el

(autoload 'cider-debug-defun-at-point "cider-debug" "\
Instrument the \"top-level\" expression at point.\nIf it is a defn, dispatch the instrumented definition.  Otherwise,\nimmediately evaluate the instrumented expression.\n\nWhile debugged code is being evaluated, the user is taken through the\nsource code and displayed the value of various expressions.  At each step,\na number of keys will be prompted to the user.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-debug" '("cider-")))

;;;***

;;;### (autoloads nil "cider-doc" "cider-doc.el" (0 0 0 0))
;;; Generated autoloads from cider-doc.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-doc" '("cider-")))

;;;***

;;;### (autoloads nil "cider-eldoc" "cider-eldoc.el" (0 0 0 0))
;;; Generated autoloads from cider-eldoc.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-eldoc" '("cider-")))

;;;***

;;;### (autoloads nil "cider-grimoire" "cider-grimoire.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from cider-grimoire.el

(autoload 'cider-grimoire-web "cider-grimoire" "\
Open grimoire documentation in the default web browser.\n\nPrompts for the symbol to use, or uses the symbol at point, depending on\nthe value of `cider-prompt-for-symbol'.  With prefix arg ARG, does the\nopposite of what that option dictates.\n\n(fn &optional ARG)" t nil)

(autoload 'cider-grimoire "cider-grimoire" "\
Open grimoire documentation in a popup buffer.\n\nPrompts for the symbol to use, or uses the symbol at point, depending on\nthe value of `cider-prompt-for-symbol'.  With prefix arg ARG, does the\nopposite of what that option dictates.\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-grimoire" '("cider-")))

;;;***

;;;### (autoloads nil "cider-inspector" "cider-inspector.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from cider-inspector.el

(autoload 'cider-inspect-last-sexp "cider-inspector" "\
Inspect the result of the the expression preceding point.\n\n(fn)" t nil)

(autoload 'cider-inspect-defun-at-point "cider-inspector" "\
Inspect the result of the \"top-level\" expression at point.\n\n(fn)" t nil)

(autoload 'cider-inspect-last-result "cider-inspector" "\
Inspect the most recent eval result.\n\n(fn)" t nil)

(autoload 'cider-inspect "cider-inspector" "\
Inspect the result of the preceding sexp.\n\nWith a prefix argument ARG it inspects the result of the \"top-level\" form.\nWith a second prefix argument it prompts for an expression to eval and inspect.\n\n(fn &optional ARG)" t nil)

(autoload 'cider-inspect-expr "cider-inspector" "\
Evaluate EXPR in NS and inspect its value.\nInteractively, EXPR is read from the minibuffer, and NS the\ncurrent buffer's namespace.\n\n(fn EXPR NS)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-inspector" '("cider-")))

;;;***

;;;### (autoloads nil "cider-interaction" "cider-interaction.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from cider-interaction.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-interaction" '("cider-")))

;;;***

;;;### (autoloads nil "cider-macroexpansion" "cider-macroexpansion.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from cider-macroexpansion.el

(autoload 'cider-macroexpand-1 "cider-macroexpansion" "\
Invoke \\=`macroexpand-1\\=` on the expression preceding point.\nIf invoked with a PREFIX argument, use \\=`macroexpand\\=` instead of\n\\=`macroexpand-1\\=`.\n\n(fn &optional PREFIX)" t nil)

(autoload 'cider-macroexpand-all "cider-macroexpansion" "\
Invoke \\=`macroexpand-all\\=` on the expression preceding point.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-macroexpansion" '("cider-")))

;;;***

;;;### (autoloads nil "cider-mode" "cider-mode.el" (0 0 0 0))
;;; Generated autoloads from cider-mode.el

(defvar cider-mode-line '(:eval (format " cider[%s]" (cider--modeline-info))) "\
Mode line lighter for cider mode.\n\nThe value of this variable is a mode line template as in\n`mode-line-format'.  See Info Node `(elisp)Mode Line Format' for details\nabout mode line templates.\n\nCustomize this variable to change how cider mode displays its status in the\nmode line.  The default value displays the current connection.  Set this\nvariable to nil to disable the mode line entirely.")

(custom-autoload 'cider-mode-line "cider-mode" t)

(eval-after-load 'clojure-mode '(easy-menu-define cider-clojure-mode-menu-open clojure-mode-map "Menu for Clojure mode.\n  This is displayed in `clojure-mode' buffers, if `cider-mode' is not active." `("CIDER" :visible (not cider-mode) ["Start a Clojure REPL" cider-jack-in :help "Starts an nREPL server (with Leiningen, Boot, or Gradle) and connects a REPL to it."] ["Connect to a Clojure REPL" cider-connect :help "Connects to a REPL that's already running."] ["Connect to a ClojureScript REPL" cider-connect-clojurescript :help "Connects to a ClojureScript REPL that's already running."] ["Start a Clojure REPL, and a ClojureScript REPL" cider-jack-in-clojurescript :help "Starts an nREPL server, connects a Clojure REPL to it, and then a ClojureScript REPL."] "--" ["View manual online" cider-view-manual])))

(autoload 'cider-mode "cider-mode" "\
Minor mode for REPL interaction from a Clojure buffer.\n\n\\{cider-mode-map}\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-mode" '("cider-")))

;;;***

;;;### (autoloads nil "cider-overlays" "cider-overlays.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from cider-overlays.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-overlays" '("cider-")))

;;;***

;;;### (autoloads nil "cider-popup" "cider-popup.el" (0 0 0 0))
;;; Generated autoloads from cider-popup.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-popup" '("cider-")))

;;;***

;;;### (autoloads nil "cider-profile" "cider-profile.el" (0 0 0 0))
;;; Generated autoloads from cider-profile.el

(autoload 'cider-profile-samples "cider-profile" "\
Displays current max-sample-count.\nIf optional QUERY is specified, set max-sample-count and display new value.\n\n(fn &optional QUERY)" t nil)

(autoload 'cider-profile-var-profiled-p "cider-profile" "\
Displays the profiling status of var under point.\nPrompts for var if none under point or QUERY is present.\n\n(fn QUERY)" t nil)

(autoload 'cider-profile-ns-toggle "cider-profile" "\
Toggle profiling for the ns associated with optional QUERY.\n\nIf optional argument QUERY is non-nil, prompt for ns.  Otherwise use\ncurrent ns.\n\n(fn &optional QUERY)" t nil)

(autoload 'cider-profile-toggle "cider-profile" "\
Toggle profiling for the given QUERY.\nDefaults to the symbol at point.\nWith prefix arg or no symbol at point, prompts for a var.\n\n(fn QUERY)" t nil)

(autoload 'cider-profile-summary "cider-profile" "\
Display a summary of currently collected profile data.\n\n(fn)" t nil)

(autoload 'cider-profile-var-summary "cider-profile" "\
Display profile data for var under point QUERY.\n\nDefaults to the symbol at point.  With prefix arg or no symbol at point,\nprompts for a var.\n\n(fn QUERY)" t nil)

(autoload 'cider-profile-clear "cider-profile" "\
Clear any collected profile data.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-profile" '("cider-profile-")))

;;;***

;;;### (autoloads nil "cider-repl" "cider-repl.el" (0 0 0 0))
;;; Generated autoloads from cider-repl.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-repl" '("cider-")))

;;;***

;;;### (autoloads nil "cider-repl-history" "cider-repl-history.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from cider-repl-history.el

(autoload 'cider-repl-history "cider-repl-history" "\
Display items in the CIDER command history in another buffer.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-repl-history" '("cider-repl-history-")))

;;;***

;;;### (autoloads nil "cider-resolve" "cider-resolve.el" (0 0 0 0))
;;; Generated autoloads from cider-resolve.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-resolve" '("cider-resolve-")))

;;;***

;;;### (autoloads nil "cider-scratch" "cider-scratch.el" (0 0 0 0))
;;; Generated autoloads from cider-scratch.el

(autoload 'cider-scratch "cider-scratch" "\
Go to the scratch buffer named `cider-scratch-buffer-name'.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-scratch" '("cider-")))

;;;***

;;;### (autoloads nil "cider-selector" "cider-selector.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from cider-selector.el

(autoload 'cider-selector "cider-selector" "\
Select a new buffer by type, indicated by a single character.\nThe user is prompted for a single character indicating the method by\nwhich to choose a new buffer.  The `?' character describes then\navailable methods.  OTHER-WINDOW provides an optional target.\n\nSee `def-cider-selector-method' for defining new methods.\n\n(fn &optional OTHER-WINDOW)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-selector" '("??" "?c" "?e" "?q" "?r" "?n" "?m" "?x" "?d" "?s" "def-cider-selector-method" "cider-")))

;;;***

;;;### (autoloads nil "cider-stacktrace" "cider-stacktrace.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from cider-stacktrace.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-stacktrace" '("cider-")))

;;;***

;;;### (autoloads nil "cider-test" "cider-test.el" (0 0 0 0))
;;; Generated autoloads from cider-test.el

(defvar cider-auto-test-mode nil "\
Non-nil if Cider-Auto-Test mode is enabled.\nSee the `cider-auto-test-mode' command\nfor a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `cider-auto-test-mode'.")

(custom-autoload 'cider-auto-test-mode "cider-test" nil)

(autoload 'cider-auto-test-mode "cider-test" "\
Toggle automatic testing of Clojure files.\n\nWhen enabled this reruns tests every time a Clojure file is loaded.\nOnly runs tests corresponding to the loaded file's namespace and does\nnothing if no tests are defined or if the file failed to load.\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-test" '("cider-")))

;;;***

;;;### (autoloads nil "cider-util" "cider-util.el" (0 0 0 0))
;;; Generated autoloads from cider-util.el

(autoload 'cider-view-manual "cider-util" "\
View the manual in your default browser.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-util" '("cider-")))

;;;***

;;;### (autoloads nil "nrepl-client" "nrepl-client.el" (0 0 0 0))
;;; Generated autoloads from nrepl-client.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "nrepl-client" '("nrepl-" "cider-enlighten-mode")))

;;;***

;;;### (autoloads nil "nrepl-dict" "nrepl-dict.el" (0 0 0 0))
;;; Generated autoloads from nrepl-dict.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "nrepl-dict" '("nrepl-")))

;;;***

;;;### (autoloads nil nil ("cider-compat.el" "cider-pkg.el") (0 0
;;;;;;  0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; cider-autoloads.el ends here
