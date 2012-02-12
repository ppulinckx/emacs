
(provide 'heartbyte_config)

(setq erlang-indent-level 2)
(setq erlang-tab-always-indent t)

(setq erlang-skel-mail-address "brad@sankatygroup.com")

(setenv "ERL_LIBS"
        (concat
         (getenv "ERL_LIBS") ":"
         "/Users/brad/dev/heartbyte/tsungsqs" ":"
         "/Users/brad/dev/heartbyte/collecterl/apps" ":"
         "/Users/brad/dev/heartbyte/collecterl/deps" ":"
         "/Users/brad/dev/heartbyte/hbclient/apps" ":"
         "/Users/brad/dev/heartbyte/hbclient/deps" ":"
	 "."
))

;; erl params
(defun my-erlang-mode-hook ()
  ;; load flymake
;;  (flymake-mode)
  ;; prevent annoying hang-on-compile
  ;(defvar inferior-erlang-prompt-timeout t)
  ;; when starting an Erlang shell in Emacs, default in the node name
  (setq inferior-erlang-machine-options
        '("-name" "heartbyte1@boorad.local"
          "-smp" "auto"
          "errlog_type" "error"
          "+K" "true"
          "+P" "50000"
          "-D" "TEST"
          "-setcookie" "doubledoozie"
          )))

(add-hook 'erlang-mode-hook 'my-erlang-mode-hook)
