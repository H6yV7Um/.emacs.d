(require 'org-install)
(add-to-list 'load-path "~/.emacs.d/lisp/ox-gfm")

(require 'ox-gfm)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))

(setq org-log-done 'time)
(setq org-todo-keywords
       '((sequence "NEXT(n)" "TODO(t)" "WAITING(w)" "SOMEDAY(s)" "|" "FINISHED(f)" "DELEGATED(d)" "CANCELED(c)" )))

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
