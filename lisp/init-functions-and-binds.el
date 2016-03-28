(defun comment-or-uncomment-line-or-region ()
  "Comments or uncomments the current line or region."
  (interactive)
  (if (region-active-p)
      (comment-or-uncomment-region (region-beginning)
				   (region-end))
    (comment-or-uncomment-region (line-beginning-position)
				 (line-end-position))))
(global-set-key (kbd "C-;") 'comment-or-uncomment-line-or-region)


(defun delete-this-buffer-and-file ()
  "Removes file connected to current buffer and kills buffer."
  (interactive)
  (let ((filename (buffer-file-name))
        (buffer (current-buffer))
        (name (buffer-name)))
    (if (not (and filename (file-exists-p filename)))
        (error "Buffer '%s' is not visiting a file!" name)
      (when (yes-or-no-p "remove the buffer and file?")
        (delete-file filename)
        (kill-buffer buffer)
        (message "File '%s' removed" filename)))))
(global-set-key (kbd "C-c k") 'delete-this-buffer-and-file)


(defun google ()
  "Google the selected region if any, display search prompt otherwise."
  (interactive)
  (browse-url
   (concat
    "http://www.google.com/search?ie=utf-8&oe=utf-8&q="
    (url-hexify-string
     (if mark-active
	 (buffer-substring (region-beginning) (region-end))
       (read-string "Google: "))))))
(global-set-key (kbd "C-x g") 'google)

(defun toggle-maximize-buffer ()
  "Maximize buffer"
  (interactive)
  (if (= 1 (length (window-list)))
      (jump-to-register '_)
    (progn
      (window-configuration-to-register '_)
      (delete-other-windows))))

(defun rename-file-and-buffer (new-name)
  "Renames both current buffer and file it's visiting to NEW-NAME."
  (interactive "sNew name: ")
  (let ((name (buffer-name))
        (filename (buffer-file-name)))
    (if (not filename)
        (message "Buffer '%s' is not visiting a file!" name)
      (if (get-buffer new-name)
          (message "A buffer named '%s' already exists!" new-name)
        (progn
          (rename-file name new-name 1)
          (rename-buffer new-name)
          (set-visited-file-name new-name)
          (set-buffer-modified-p nil))))))

(defun copy-buffer-to-new-file (new-file-name)
  "copy current buffer content and save as a new file"
  (interactive "sNew name: ")
  (let ((name (buffer-name))
	(filename (buffer-file-name)))
    (if (not filename)
	(message "buffer '%s' is not visting a file!" name)
      (if (get-buffer new-file-name)
	  (message "a buffer named '%s' already exists!" new-file-name)
	(progn
	  (copy-file filename new-file-name)
	  (set-visited-file-name new-file-name))))))

(defun move-line-up ()
  (interactive)
  (transpose-lines 1)
  (forward-line -2))

(defun move-line-down ()
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1))

(global-set-key (kbd "C-S-<up>") 'move-line-up)
(global-set-key (kbd "C-S-<down>") 'move-line-down)

(defun switch-to-minibuffer ()
  "Switch to minibuffer window."
  (interactive)
  (if (active-minibuffer-window)
      (select-window (active-minibuffer-window))
    (error "Minibuffer is not active")))
(global-set-key (kbd "C-c m") 'switch-to-minibuffer)

(defun frame-bck()
  (interactive)
  (other-window -1)
  )
(define-key (current-global-map) (kbd "M-o") 'other-window)
(define-key (current-global-map) (kbd "M-O") 'frame-bck)

;;; copy without selection

(defun get-point (symbol &optional arg)
  "get the point"
  (funcall symbol arg)
  (point))

(defun copy-thing (begin-of-thing end-of-thing &optional arg)
  "copy thing between beg & end into kill ring"
  (save-excursion
    (let ((beg (get-point begin-of-thing 1))
	  (end (get-point end-of-thing arg)))
      (copy-region-as-kill beg end))))

(defun paste-to-mark(&optional arg)
  "Paste things to mark, or to the prompt in shell-mode"
  (let ((pasteMe
     	 (lambda()
     	   (if (string= "shell-mode" major-mode)
	       (progn (comint-next-prompt 25535) (yank))
	     (progn (goto-char (mark)) (yank) )))))
    (if arg
	(if (= arg 1)
	    nil
	  (funcall pasteMe))
      (funcall pasteMe))))

;;; (paste-to-mark arg)
(defun copy-word (&optional arg)
  "copy cursor position word"
  (interactive)
  (copy-thing 'backward-word 'forward-word arg))
(global-set-key (kbd "C-c w") 'copy-word)

(defun copy-line (&optional arg)
  "copy cursor line"
  (interactive)
  (copy-thing 'beginning-of-line 'end-of-line arg))
(global-set-key (kbd "C-c l") 'copy-line)

(defun copy-paragraph (&optional arg)
  "copy cursor paragraph"
  (interactive)
  (copy-thing 'backward-paragraph 'forward-paragraph arg))
(global-set-key (kbd "C-c p") 'copy-paragraph)

(defun new-empty-buffer ()
  "Open a new empty buffer."
  (interactive)
  (let ((buf (generate-new-buffer "untitled")))
    (switch-to-buffer buf)
    (funcall (and initial-major-mode))
    (setq buffer-offer-save t)))

(defun copy-file-path (&optional φdir-path-only-p)
  "Copy the current buffer's file path or dired path to `kill-ring'.
If `universal-argument' is called, copy only the dir path."
  (interactive "P")
  (let ((fPath
         (if (equal major-mode 'dired-mode)
             default-directory
           (buffer-file-name))))
    (kill-new
     (if (equal φdir-path-only-p nil)
         fPath
       (file-name-directory fPath))))
  (message "File path copied."))

;;; for tramp-mode of host

;; (add-to-list 'tramp-default-proxies-alist
	     ;; '((("\\l" nil "/sudo:andy@andyMacbookAir"))))
;; (add-to-list 'tramp-default-proxies-alist
	     ;; '((("\\t" nil "/sudo:elemedev@testing"))))
;; (add-to-list 'tramp-default-proxies-alist
	     ;; '((("\\p" nil "/sudo:andy@p-service-0"))))
;; (add-to-list 'tramp-default-proxies-alist
	     ;; '((("\\pp" nil "/sudo:andy@p-service-1"))))
;; (set-default 'tramp-default-proxies-alist
	     ;; (quote (("testing" "elemedev" "/ssh:%h:"))))

;;; Global key binds

(global-set-key "\C-ch" help-map)
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-0") 'magit-status)
(global-set-key (kbd "C-1") 'set-mark-command)
(global-set-key (kbd "C-2") 'toggle-maximize-buffer)
(global-set-key (kbd "C-3") 'save-buffer)
(global-set-key (kbd "C-9") 'shell-command)
(global-set-key (kbd "C-x k") (lambda ()
				(interactive)
				(kill-buffer (buffer-name))))
(global-set-key "\C-cy" '(lambda ()
                                 (interactive)
                                 (popup-menu 'yank-menu)))
(global-set-key (kbd "C-8") '(lambda ()
			       (interactive)
			       (pop kill-ring)))
(global-set-key "\C-ca" 'window-numbering-select-previous-window)
(provide 'init-functions-and-binds)
