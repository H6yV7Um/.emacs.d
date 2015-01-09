;;;; workgroup to store window layouts
(add-to-list 'load-path "~/.emacs.d/lisp/workgroups2/src")
(require 'workgroups2)
(desktop-save-mode t)
(setq wg-prefix-key (kbd "C-z")
      wg-restore-associated-buffers nil ; restore all buffers opened in this WG?
      wg-use-default-session-file t   ; turn off for "emacs --daemon"
      wg-default-session-file "~/.emacs-workgroups/emacs"
      wg-use-faces nil
      wg-morph-on nil)                  ; animation off
;; Keyboard shortcuts - load, save, switch
(global-set-key (kbd "<pause>")     'wg-reload-session)
(global-set-key (kbd "C-S-<pause>") 'wg-save-session)
(global-set-key (kbd "s-z")         'wg-switch-to-workgroup)
(global-set-key (kbd "s-/")         'wg-switch-to-previous-workgroup)
(workgroups-mode 1)
(provide 'init-workgroup)
