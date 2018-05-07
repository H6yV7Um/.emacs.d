;;; python-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "python-mode" "python-mode.el" (0 0 0 0))
;;; Generated autoloads from python-mode.el

(autoload 'py-backward-class "python-mode" "\
Go to beginning of ‘class’ according to INDENT.\n\nIf already at beginning, go one ‘class’ backward.\nOptional DECORATOR BOL\n\nReturn beginning of ‘class’ if successful, nil otherwise\n\n(fn &optional INDENT DECORATOR BOL)" t nil)

(autoload 'py-backward-def "python-mode" "\
Go to beginning of ‘def’ according to INDENT.\n\nIf already at beginning, go one ‘def’ backward.\nOptional DECORATOR BOL\n\nReturn beginning of ‘def’ if successful, nil otherwise\n\n(fn &optional INDENT DECORATOR BOL)" t nil)

(autoload 'py-backward-def-or-class "python-mode" "\
Go to beginning of ‘def-or-class’ according to INDENT.\n\nIf already at beginning, go one ‘def-or-class’ backward.\nOptional DECORATOR BOL\n\nReturn beginning of ‘def-or-class’ if successful, nil otherwise\n\n(fn &optional INDENT DECORATOR BOL)" t nil)

(autoload 'py-backward-class-bol "python-mode" "\
Go to beginning of ‘class’ according to INDENT, go to BOL.\nOptional DECORATOR BOL\n\nIf already at beginning, go one ‘class’ backward.\nReturn beginning of ‘class’ if successful, nil otherwise\n\n(fn &optional INDENT DECORATOR)" t nil)

(autoload 'py-backward-def-bol "python-mode" "\
Go to beginning of ‘def’ according to INDENT, go to BOL.\nOptional DECORATOR BOL\n\nIf already at beginning, go one ‘def’ backward.\nReturn beginning of ‘def’ if successful, nil otherwise\n\n(fn &optional INDENT DECORATOR)" t nil)

(autoload 'py-backward-def-or-class-bol "python-mode" "\
Go to beginning of ‘def-or-class’ according to INDENT, go to BOL.\nOptional DECORATOR BOL\n\nIf already at beginning, go one ‘def-or-class’ backward.\nReturn beginning of ‘def-or-class’ if successful, nil otherwise\n\n(fn &optional INDENT DECORATOR)" t nil)

(autoload 'py-forward-class "python-mode" "\
Go to end of class.\n\nReturn end of class if successful, nil otherwise\nOptional arg DECORATOR is used if form supports one\nWith optional BOL, go to beginning of line following match.\n\n(fn &optional DECORATOR BOL)" t nil)

(autoload 'py-forward-def-or-class "python-mode" "\
Go to end of def-or-class.\n\nReturn end of def-or-class if successful, nil otherwise\nOptional arg DECORATOR is used if form supports one\nWith optional BOL, go to beginning of line following match.\n\n(fn &optional DECORATOR BOL)" t nil)

(autoload 'py-forward-def "python-mode" "\
Go to end of def.\n\nReturn end of def if successful, nil otherwise\nOptional arg DECORATOR is used if form supports one\nWith optional BOL, go to beginning of line following match.\n\n(fn &optional DECORATOR BOL)" t nil)

(autoload 'py-shell "python-mode" "\
Start an interactive Python interpreter in another window.\nInteractively, \\[universal-argument] prompts for a new ‘buffer-name’.\n  \\[universal-argument] 2 prompts for ‘py-python-command-args’.\n  If ‘default-directory’ is a remote file name, it is also prompted\n  to change if called with a prefix arg.\n  Optional ARGPROMPT DEDICATED\n  Optional string SHELL overrides default ‘py-shell-name’.\n  Returns py-shell's ‘buffer-name’.\n  BUFFER allows specifying a name, the Python process is connected to\n  FAST process not in ‘comint-mode’ buffer\n  EXCEPTION-BUFFER point to error\n  SPLIT see var ‘py-split-window-on-execute’\n  SWITCH see var ‘py-switch-buffers-on-execute-p’\n\n(fn &optional ARGPROMPT DEDICATED SHELL BUFFER FAST EXCEPTION-BUFFER SPLIT SWITCH)" t nil)

(autoload 'ipython "python-mode" "\
Start an IPython interpreter.\n\nOptional ARG \\[universal-argument] prompts for path to the interpreter.\n\n(fn &optional ARGPROMPT BUFFER FAST EXCEPTION-BUFFER SPLIT SWITCH)" t nil)

(autoload 'ipython2\.7 "python-mode" "\
Start an IPython2.7 interpreter.\n\nOptional ARG \\[universal-argument] prompts for path to the interpreter.\n\n(fn &optional ARGPROMPT BUFFER FAST EXCEPTION-BUFFER SPLIT SWITCH)" t nil)

(autoload 'ipython3 "python-mode" "\
Start an IPython3 interpreter.\n\nOptional ARG \\[universal-argument] prompts for path to the interpreter.\n\n(fn &optional ARGPROMPT BUFFER FAST EXCEPTION-BUFFER SPLIT SWITCH)" t nil)

(autoload 'jython "python-mode" "\
Start an Jython interpreter.\n\nOptional ARG \\[universal-argument] prompts for path to the interpreter.\n\n(fn &optional ARGPROMPT BUFFER FAST EXCEPTION-BUFFER SPLIT SWITCH)" t nil)

(autoload 'python "python-mode" "\
Start an Python interpreter.\n\nOptional ARG \\[universal-argument] prompts for path to the interpreter.\n\n(fn &optional ARGPROMPT BUFFER FAST EXCEPTION-BUFFER SPLIT SWITCH)" t nil)

(autoload 'python2 "python-mode" "\
Start an Python2 interpreter.\n\nOptional ARG \\[universal-argument] prompts for path to the interpreter.\n\n(fn &optional ARGPROMPT BUFFER FAST EXCEPTION-BUFFER SPLIT SWITCH)" t nil)

(autoload 'python3 "python-mode" "\
Start an Python3 interpreter.\n\nOptional ARG \\[universal-argument] prompts for path to the interpreter.\n\n(fn &optional ARGPROMPT BUFFER FAST EXCEPTION-BUFFER SPLIT SWITCH)" t nil)

(autoload 'py-auto-completion-mode "python-mode" "\
Run auto-completion\n\n(fn)" t nil)

(autoload 'python-mode "python-mode" "\
Major mode for editing Python files.\n\nTo submit a problem report, enter `\\[py-submit-bug-report]' from a\n`python-mode' buffer.  Do `\\[py-describe-mode]' for detailed\ndocumentation.  To see what version of `python-mode' you are running,\nenter `\\[py-version]'.\n\nThis mode knows about Python indentation, tokens, comments and\ncontinuation lines.  Paragraphs are separated by blank lines only.\n\nCOMMANDS\n\n`py-shell'	Start an interactive Python interpreter in another window\n`py-execute-statement'	Send statement at point to Python default interpreter\n`py-backward-statement'	Go to the initial line of a simple statement\n\netc.\n\nSee available commands listed in files commands-python-mode at directory doc\n\nVARIABLES\n\n`py-indent-offset'	indentation increment\n`py-shell-name'		shell command to invoke Python interpreter\n`py-split-window-on-execute'		When non-nil split windows\n`py-switch-buffers-on-execute-p'	When non-nil switch to the Python output buffer\n\nSee available customizations listed in files variables-python-mode at directory doc\n\n\\{python-mode-map}\n\n(fn)" t nil)

(autoload 'py-python-shell-mode "python-mode" "\
Major mode for interacting with a Python process.\nA Python process can be started with \\[py-shell].\n\nYou can send text to the Python process from other buffers\ncontaining Python source.\n * \\[py-execute-region] sends the current region to the Python process.\n\nSets basic comint variables, see also versions-related stuff in `py-shell'.\n\\{py-python-shell-mode-map}\n\n(fn)" t nil)

(autoload 'py-ipython-shell-mode "python-mode" "\
Major mode for interacting with a Python process.\nA Python process can be started with \\[py-shell].\n\nYou can send text to the Python process from other buffers\ncontaining Python source.\n * \\[py-execute-region] sends the current region to the Python process.\n\nSets basic comint variables, see also versions-related stuff in `py-shell'.\n\\{py-ipython-shell-mode-map}\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "python-mode" '("pep8" "pst-here" "pps-emacs-version" "pios" "inf" "ios" "ipy" "iyp" "Python" "IPython" "Ipython" "virtualenv-" "jython-" "durck" "druck" "empty-line-p" "eva" "ffap-alist" "force-py-shell-name-p-o" "flake8" "toggle-" "turn-o" "highlight-indent-active" "hs-hide-comments-when-hiding-all" "strip-chars-" "autopair-mode")))

;;;***

;;;### (autoloads nil nil ("python-mode-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; python-mode-autoloads.el ends here
