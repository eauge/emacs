(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(delete 'company-semantic company-backends)

(add-to-list 'company-backends 'company-c-headers)

(provide 'setup-company)
