(require 'company)

(add-hook 'after-init-hook 'global-company-mode)
(global-set-key (kbd "C-c C-n") 'company-complete-common)

(provide 'setup-company)
