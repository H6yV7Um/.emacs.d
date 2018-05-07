;;; cask-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "cask" "cask.el" (0 0 0 0))
;;; Generated autoloads from cask.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cask" '("cask-")))

;;;***

;;;### (autoloads nil "cask-bootstrap" "cask-bootstrap.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from cask-bootstrap.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cask-bootstrap" '("cask-bootstrap-")))

;;;***

;;;### (autoloads nil "cask-cli" "cask-cli.el" (0 0 0 0))
;;; Generated autoloads from cask-cli.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cask-cli" '("cask-cli")))

;;;***

;;;### (autoloads nil "package-legacy" "package-legacy.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from package-legacy.el

(defvar package-enable-at-startup t "\
Whether to activate installed packages when Emacs starts.\nIf non-nil, packages are activated after reading the init file\nand before `after-init-hook'.  Activation is not done if\n`user-init-file' is nil (e.g. Emacs was started with \"-q\").\n\nEven if the value is nil, you can type \\[package-initialize] to\nactivate the package system at any time.")

(custom-autoload 'package-enable-at-startup "package-legacy" t)

(autoload 'package-install "package-legacy" "\
Install the package named NAME.\nInteractively, prompt for the package name.\nThe package is found on one of the archives in `package-archives'.\n\n(fn NAME)" t nil)

(autoload 'package-install-from-buffer "package-legacy" "\
Install a package from the current buffer.\nWhen called interactively, the current buffer is assumed to be a\nsingle .el file that follows the packaging guidelines; see info\nnode `(elisp)Packaging'.\n\nWhen called from Lisp, PKG-INFO is a vector describing the\ninformation, of the type returned by `package-buffer-info'; and\nTYPE is the package type (either `single' or `tar').\n\n(fn PKG-INFO TYPE)" t nil)

(autoload 'package-install-file "package-legacy" "\
Install a package from a file.\nThe file can either be a tar file or an Emacs Lisp file.\n\n(fn FILE)" t nil)

(autoload 'package-initialize "package-legacy" "\
Load Emacs Lisp packages, and activate them.\nThe variable `package-load-list' controls which packages to load.\nIf optional arg NO-ACTIVATE is non-nil, don't activate packages.\n\n(fn &optional NO-ACTIVATE)" t nil)

(autoload 'describe-package "package-legacy" "\
Display the full documentation of PACKAGE (a symbol).\n\n(fn PACKAGE)" t nil)

(autoload 'list-packages "package-legacy" "\
Display a list of packages.\nFetches the updated list of packages before displaying.\nThe list is displayed in a buffer named `*Packages*'.\n\n(fn)" t nil)

(defalias 'package-list-packages 'list-packages)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "package-legacy" '("package-" "define-package" "describe-package-1")))

;;;***

;;;### (autoloads nil nil ("cask-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; cask-autoloads.el ends here
