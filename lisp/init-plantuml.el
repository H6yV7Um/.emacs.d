;; active Org-babel languages
(require 'ob-plantuml)
(org-babel-do-load-languages
 'org-babel-load-languages
 '(;; other Babel languages
   (plantuml . t)))
(setq org-confirm-babel-evaluate nil)
(setq org-plantuml-jar-path
      (expand-file-name "~/.emacs.d/lisp/plantuml.jar"))

(provide 'init-plantuml)
