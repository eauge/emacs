(require 'magit)

(setq magit-last-seen-setup-instructions "1.4.0")
(setq magit-auto-revert-mode t)
(global-set-key (kbd "C-x g") 'magit-status)

(provide 'setup-magit)
