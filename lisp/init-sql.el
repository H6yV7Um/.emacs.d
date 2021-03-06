(require 'sql)

(setq sql-connection-alist
      '((server1 (sql-product 'mysql)
                  (sql-port 3306)
                  (sql-server "testing")
                  (sql-user "root")
                  (sql-password "Root")
                  (sql-database "eleme"))
        (server2 (sql-product 'mysql)
                  (sql-port 3306)
                  (sql-server "p-mysql-0")
                  (sql-user "eleme")
                  (sql-password "")
                  (sql-database "eleme"))))
;; (defalias )
;; (defun my-sql-save-history-hook ()
;;   (let ((lval 'sql-input-ring-file-name)
;; 	(rval 'sql-product))
;;     (if (symbol-value rval)
;; 	(let ((filename
;; 	       (concat "~/.emacs.d/sql/"
;; 		       (symbol-name (symbol-value rval))
;; 		       "-history.sql")))
;; 	  (set (make-local-variable lval) filename))
;;       (error
;;        (format "SQL history will not be saved because %s is nil"
;; 	       (symbol-name rval))))))

;; (add-hook 'sql-interactive-mode-hook 'my-sql-save-history-hook)
;; (defvar sql-last-prompt-pos 1
;;   "position of last prompt when added recording started")
;; (make-variable-buffer-local 'sql-last-prompt-pos)
;; (put 'sql-last-prompt-pos 'permanent-local t)

;; (defun sql-add-newline-first (output)
;;   "Add newline to beginning of OUTPUT for `comint-preoutput-filter-functions'
;;     This fixes up the display of queries sent to the inferior buffer
;;     programatically."
;;   (let ((begin-of-prompt
;; 	 (or (and comint-last-prompt-overlay
;; 		  ;; sometimes this overlay is not on prompt
;; 		  (save-excursion
;; 		    (goto-char (overlay-start comint-last-prompt-overlay))
;; 		    (looking-at-p comint-prompt-regexp)
;; 		    (point)))
;; 	     1)))
;;     (if (> begin-of-prompt sql-last-prompt-pos)
;; 	(progn
;; 	  (setq sql-last-prompt-pos begin-of-prompt)
;; 	  (concat "\n" output))
;;       output)))

;; (defun sqli-add-hooks ()
;;   "Add hooks to `sql-interactive-mode-hook'."
;;   (add-hook 'comint-preoutput-filter-functions
;; 	    'sql-add-newline-first))

;; (add-hook 'sql-interactive-mode-hook 'sqli-add-hooks)
(provide 'init-sql)
