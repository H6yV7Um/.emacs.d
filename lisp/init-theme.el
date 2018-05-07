;;; font
(set-frame-font "-*-Monaco-normal-r-*-*-14-102-120-120-c-*-iso8859-1")
(if (display-graphic-p)
	(dolist (charset '(kana han symbol cjk-misc bopomofo))
	(set-fontset-font (frame-parameter nil 'font)
	charset
	(font-spec :family "WenQuanYi Zen Hei Mono"))))
;;; color theme
(add-to-list 'load-path "~/.emacs.d/lisp/color-theme-6.6.0")
(require 'color-theme)
(load-theme 'andear t)
;; ;;; column indicator
(provide 'init-theme)
