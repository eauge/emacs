(global-unset-key (kbd "M-n"))
(global-unset-key (kbd "M-p"))
(global-set-key (kbd "M-n") 'flycheck-next-error)
(global-set-key (kbd "M-p") 'flycheck-previous-error)

;; (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
(add-hook 'after-init-hook #'global-flycheck-mode)

(provide 'setup-flycheck)
