(require 'org-install)
(add-to-list 'load-path "~/.emacs.d/lisp/ox-gfm")

(require 'ox-gfm)

(setq org-log-done 'time)

(eval-after-load "org"
  '(require 'ox-md nil t))

(add-hook 'org-mode-hook
          (lambda () (add-hook
		      'after-save-hook
		      'org-gfm-export-to-markdown
		      nil
		      'local)))

(setq org-src-preserve-indentation nil
      org-edit-src-content-indentation 0)

(provide 'init-org)
