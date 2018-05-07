;;; gnuplot-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "gnuplot" "gnuplot.el" (0 0 0 0))
;;; Generated autoloads from gnuplot.el

(autoload 'gnuplot-mode "gnuplot" "\
Major mode for editing and executing GNUPLOT scripts.\nThis was written with version 4.6 of gnuplot in mind, but should\nwork with newer and older versions.\n\nReport bugs in `gnuplot-mode' using \\[gnuplot-bug-report].\n\n			    ------O------\n\nGnuplot-mode includes two different systems for keyword\ncompletion and documentation lookup: a newer one,\n`gnuplot-context-sensitive-mode' (enabled by default), and a\nolder one which extracts keywords from gnuplot's Info file.  Both\nsystems allow looking up documentation in the Info file.  The\nolder system also depends having the info file properly installed\nto make a list of keywords.\n\nThe info file should be installed by default with the Gnuplot\ndistribution, or is available at the `gnuplot-mode' web page:\nhttp://github.com/bruceravel/gnuplot-mode/\n\nWith the new context-sensitive mode active, gnuplot-mode can also\nprovide `eldoc-mode' syntax hints as you type.  This requires a\nseparate file of strings, `gnuplot-eldoc.el', which is also\nprovided by recent Gnuplot distributions.\n\n			    ------O------\n\nThere are several known shortcomings of `gnuplot-mode', version 0.5g\nand up.  Many of the shortcomings involve the graphical interface\n(refered to as the GUI) to setting arguments to plot options.  Here is\na list:\n\n 1.  Currently there is no way for `gnuplot-mode' to know if information\n     sent to gnuplot was correctly plotted.\n 2.  \"plot\", \"splot\", and \"fit\" are handled in the GUI, but are\n     a bit flaky.  Their arguments may not be read correctly from\n     existing text, and continuation lines (common for plot and splot)\n     are not supported.\n 3.  The GUI does not know how to read from continuation lines.\n 4.  Comma separated position arguments to plot options are\n     unsupported in the GUI.  Colon separated datafile modifiers (used\n     for plot, splot, and fit) are not supported either.  Arguments\n     not yet supported by the GUI generate messages printed in grey\n     text.\n 5.  The GUI handling of \"hidden3d\" is flaky and \"cntrparam\" is\n     unsupported.\n\n			    ------O------\n\n Key bindings:\n \\{gnuplot-mode-map}\n\n(fn)" t nil)

(autoload 'gnuplot-make-buffer "gnuplot" "\
Open a new buffer in `gnuplot-mode'.\nWhen invoked, it switches to a new, empty buffer visiting no file\nand then starts `gnuplot-mode'.\n\nIt is convenient to bind this function to a global key sequence.  For\nexample, to make the F10 key open a gnuplot script buffer, put the\nfollowing in your .emacs file:\n     (autoload 'gnuplot-make-buffer \"gnuplot\"\n               \"open a buffer in gnuplot mode\" t)\n     (global-set-key [(f10)] 'gnuplot-make-buffer)\n\n(fn)" t nil)

(autoload 'run-gnuplot "gnuplot" "\
Run an inferior Gnuplot process.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "gnuplot" '("gnuplot-")))

;;;***

;;;### (autoloads nil "gnuplot-context" "gnuplot-context.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from gnuplot-context.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "gnuplot-context" '("gnuplot-")))

;;;***

;;;### (autoloads nil "gnuplot-gui" "gnuplot-gui.el" (0 0 0 0))
;;; Generated autoloads from gnuplot-gui.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "gnuplot-gui" '("gnuplot-")))

;;;***

;;;### (autoloads nil nil ("gnuplot-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; gnuplot-autoloads.el ends here
