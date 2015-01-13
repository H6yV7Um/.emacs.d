(defalias 'yes-or-no-p 'y-or-n-p)
(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 1)
(global-linum-mode t)
(prettify-symbols-mode 1)
(superword-mode 1)
(defun andy-linum-format (line)
  (propertize
   (format (concat "%"
                   (number-to-string
                    (length (number-to-string
                             (line-number-at-pos (point-max)))))
                   "d ")
           line)
   'face 'linum))
(setq linum-format 'andy-linum-format)

(global-hl-line-mode 1)
(electric-indent-mode 1)
(set-face-background hl-line-face "#24281f")
(global-auto-revert-mode t)
(custom-set-variables
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs-autosaves/" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs-autosaves/")))))
(set-language-environment "UTF-8")
(add-to-list 'exec-path "/usr/local/bin/")
(provide 'init-setting)
