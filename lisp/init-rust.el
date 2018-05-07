(require 'rust-mode)
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(setq racer-cmd "/usr/local/bin/racer")
(setq racer-rust-src-path "/usr/local/Cellar/rust/1.9.0/rust/src")
(add-hook 'racer-mode-hook #'company-mode)

(define-key rust-mode-map (kbd "TAB")
  #'company-indent-or-complete-common)

(setq company-tooltip-align-annotations t)

(defvar racer-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "C-.") #'racer-find-definition)
    (define-key map (kbd "C-,") #'pop-tag-mark)
    map))

(provide 'init-rust)
