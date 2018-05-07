;;; google-translate-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "google-translate-core" "google-translate-core.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from google-translate-core.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "google-translate-core" '("google-translate-")))

;;;***

;;;### (autoloads nil "google-translate-core-ui" "google-translate-core-ui.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from google-translate-core-ui.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "google-translate-core-ui" '("gtos" "google-translate-")))

;;;***

;;;### (autoloads nil "google-translate-default-ui" "google-translate-default-ui.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from google-translate-default-ui.el

(autoload 'google-translate-query-translate "google-translate-default-ui" "\
Interactively translate text with Google Translate.\n\nQuery a text (a word or a phrase), and pop up a buffer named *Google\nTranslate* displaying available translations of the text.\n\nIf no defaults for the source and target languages are specified (by\nsetting the variables `google-translate-default-source-language' and\n`google-translate-default-target-language'), interactively query the\nmissing parts.  For example, a reasonable option may be to specify a\ndefault for the target language and always be queried for the source\nlanguage.\n\nWith a `C-u' prefix argument, query the source and target languages,\neven if any defaults are specified.  For example, you may frequently\nneed to translate from English to Russian, and you may choose to set\nthe default source and target languages to \"en\" and  \"ru\", resp.\nHowever, occasionally you may also need to translate from Russian to\nEnglish.  With a `C-u' prefix argument you can override the defaults\nand specify the source and target languages explicitly.\n\nThe languages are queried with completion, and the null input at the\nsource language prompt is considered as an instruction for Google\nTranslate to detect the source language.\n\n(fn &optional OVERRIDE-P)" t nil)

(autoload 'google-translate-query-translate-reverse "google-translate-default-ui" "\
Like `google-translate-query-translate', but performs translation\nin the reverse direction.\n\nThe value of the variable `google-translate-default-source-language'\n(if set) becomes the target language, and the value of the variable\n`google-translate-default-target-language' (if also set) becomes the\nsource language.\n\nIn particular, when both variables are set, translation is performed\nin the reverse direction.\n\n(fn &optional OVERRIDE-P)" t nil)

(autoload 'google-translate-at-point "google-translate-default-ui" "\
Translate the word at point or the words in the active region.\n\nFor the meaning of OVERRIDE-P, see `google-translate-query-translate'.\n\n(fn &optional OVERRIDE-P)" t nil)

(autoload 'google-translate-at-point-reverse "google-translate-default-ui" "\
Like `google-translate-at-point', but performs translation in the\nreverse direction.\n\n(fn &optional OVERRIDE-P)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "google-translate-default-ui" '("%google-translate-" "google-translate-")))

;;;***

;;;### (autoloads nil "google-translate-smooth-ui" "google-translate-smooth-ui.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from google-translate-smooth-ui.el

(autoload 'google-translate-smooth-translate "google-translate-smooth-ui" "\
Translate a text using translation directions.\n\nMake a prompt in minibuffer for a text to translate. Default text\nis word at point.\n\nIn case of `google-translate-translation-directions-alist' is\nempty list then after inputed translating text prompts for source\nlanguage and then for target languages.\n\nIn case of `google-translate-translation-directions-alist' is not\nempty list takes current translation direction and makes\nappropriate translation. Current translation direction indicates\nin the minibuffers' prompt.\n\nA current translation direction could be changed directly in the\nminibuffer by means of key bindings such as C-n and C-p for\nchanging to the next translation direction and to the previous\none respectively.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "google-translate-smooth-ui" '("google-translate-")))

;;;***

;;;### (autoloads nil "google-translate-tk" "google-translate-tk.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from google-translate-tk.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "google-translate-tk" '("google-translate--")))

;;;***

;;;### (autoloads nil nil ("google-translate-pkg.el" "google-translate.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; google-translate-autoloads.el ends here
