;;; mew for email
(add-to-list 'load-path "~/.emacs.d/lisp/mew-6.5")
(autoload 'mew "mew" nil t)
(autoload 'mew-send "mew" nil t)
(setq mew-use-cached-passwd t)
(setq mew-charset-m17n "utf-8")
(setq mew-internal-utf-8p t)
(if (boundp 'read-mail-command)
    (setq read-mail-command 'mew))
(if (boundp 'mail-user-agent)
    (setq mail-user-agent 'mew-user-agent))
(autoload 'mew-user-agent-compose "mew" nil t)
(if (fboundp 'define-mail-user-agent)
    (define-mail-user-agent
      'mew-user-agent
      'mew-user-agent-compose
      'mew-draft-send-message
      'mew-draft-kill
      'mew-send-hook))
(setq mew-signature-as-lastpart t)
(setq mew-signature-insert-last t)
(add-hook 'mew-before-cite-hook 'mew-header-goto-body)
(add-hook 'mew-draft-mode-newdraft-hook 'mew-draft-insert-signature)
;; external applications
(setq browse-url-netscape-program "open")
(setq browse-url-mozilla-program "open")
(setq thing-at-point-url-path-regexp "[~/A-Za-z0-9---_.${}#%,:]+")

(setq mew-prog-text/html         'mew-mime-text/html-w3m)
(setq mew-prog-text/html-ext    "open")
(setq mew-prog-text/xml         'mew-mime-text/html-w3m)
(setq mew-prog-text/xml-ext     "open")
(setq mew-prog-application/xml         nil)
(setq mew-prog-application/xml-ext     "open")
;(setq browse-url-browser-function 'browse-url-generic
;     browse-url-generic-program "firefox")
(defun my-mew-message-mode-hook ()
    (local-set-key "\C-c\C-b" 'browse-url-at-point))
(add-hook 'mew-message-mode-hook 'my-mew-message-mode-hook)
;(setq browse-url-browser-function 'browse-url-netscape)
(setq mew-prog-pdf             "open")

(setq mew-prog-msword '("open" nil t))
(setq mew-prog-msexcel '("open" nil t))
(setq mew-prog-mspowerpoint '("open" nil t))
;; address@server browse-url
(autoload 'browse-url-interactive-arg "browse-url")
(autoload 'browse-url-browser-function "browse-url"
  "Ask a WWW browser to show a URL." t)
(autoload 'browse-url-at-point "browse-url"
  "Ask a WWW browser to load the URL at or before point." t)
(autoload 'browse-url-at-mouse "browse-url"
  "Ask a WWW browser to load a URL clicked with the mouse." t)
(autoload 'browse-url-of-buffer "browse-url"
  "Ask a WWW browser to display BUFFER." t)
(autoload 'browse-url-of-file "browse-url"
  "Ask a WWW browser to display FILE." t)
(autoload 'browse-url-of-dired-file "browse-url"
  "In Dired, ask a WWW browser to display the file named on this line." t)
(add-hook 'mew-message-mode-hook
          (function
           (lambda ()
            (local-set-key [mouse-2] 'browse-url-at-mouse)
            )))
(provide 'init-mew)
