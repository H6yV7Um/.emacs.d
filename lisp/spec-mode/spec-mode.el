(require 'font-lock)
(eval-when-compile
  (require 'regexp-opt))

(defun spc-comment-dwim (arg)
  (interactive "*P")
  (require 'newcomment)
  (let ((comment-start "'") (comment-end ""))
    (comment-dwim arg)))

(setq-default mode-require-final-newline nil)

(defconst spec-font-lock-keywords
  (list '("\\<\\(Path\\|Method\\|Description\\|Parameters\\|Return\\)\\>" . font-lock-builtin-face)
		'("\\<\\(optional\\|required\\|GET\\|POST\\)\\>" . font-lock-keyword-face)
		'("\\<\\(float\\|int\\|bool\\|string\\|list\\|rich_text\\|url\\)\\>" . font-lock-type-face)))

(defvar spec-syntax-table nil "Syntax table for `spec-mode'.")
(setq spec-syntax-table
      (let ((synTable (make-syntax-table)))
        (modify-syntax-entry ?' "< b" synTable)
        (modify-syntax-entry ?\n "> b" synTable)
        synTable))

(define-derived-mode spec-mode fundamental-mode
  "spec mode"
  "Major mode for editing spec file"
  :syntax-table spec-syntax-table
  (setq font-lock-defaults '(spec-font-lock-keywords))
  ;; set mode name
  (setq mode-name "spec-mode")
  (setq-default tab-width 4)
  (setq indent-tabs-mode nil)
  (setq indent-line-function 'tab-to-tab-stop)
  (setq yas/prompt-functions '(yas/ido-prompt
			       yas/completing-prompt))
  ;; remap comment
  (define-key spec-mode-map [remap comment-dwim] 'spec-comment-dwim))

(provide 'sepc-mode)
