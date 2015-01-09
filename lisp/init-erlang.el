;;; erlang-mode
(setq load-path (cons  "/usr/local/Cellar/erlang/17.1/lib/erlang/lib/tools-2.6.15/emacs"
                             load-path))
      (setq erlang-root-dir "/usr/local/Cellar/erlang/17.1/lib/erlang/")
      (setq exec-path (cons "/usr/local/Cellar/erlang/17.1/lib/erlang/bin/" exec-path))
      (require 'erlang-start)
(add-hook 'erlang-mode-hook '(lambda() (setq indent-tabs-mode nil)))
(defvar inferior-erlang-prompt-timeout t)
(provide 'init-erlang)
