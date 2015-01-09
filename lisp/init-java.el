(add-to-list 'load-path "~/.emacs.d/lisp/jdee-2.4.1/lisp")
(autoload 'jde-mode "jde" "JDE mode" t)
(setq auto-mode-alist
      (append '(("\\.java\\'" . jde-mode)) auto-mode-alist))

(provide 'init-java)
