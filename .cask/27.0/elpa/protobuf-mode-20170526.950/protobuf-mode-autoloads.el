;;; protobuf-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "protobuf-mode" "protobuf-mode.el" (0 0 0 0))
;;; Generated autoloads from protobuf-mode.el
 (add-to-list 'auto-mode-alist '("\\.proto\\'" . protobuf-mode))

(autoload 'protobuf-mode "protobuf-mode" "\
Major mode for editing Protocol Buffers description language.\n\nThe hook `c-mode-common-hook' is run with no argument at mode\ninitialization, then `protobuf-mode-hook'.\n\nKey bindings:\n\\{protobuf-mode-map}\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "protobuf-mode" '("protobuf-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; protobuf-mode-autoloads.el ends here
