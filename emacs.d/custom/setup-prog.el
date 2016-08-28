;; Package: clean-aindent-mode
(require 'clean-aindent-mode)
(add-hook 'prog-mode-hook 'clean-aindent-mode)

;; Package: dtrt-indent
(require 'dtrt-indent)
(dtrt-indent-mode 1)

;; Package: ws-butler
(require 'ws-butler)
(add-hook 'prog-mode-hook 'ws-butler-mode)

;; hs-minor-mode
(add-hook 'prog-mode-hook 'hs-minor-mode)

;; smartscan
(require 'smartscan)
(smartscan-mode 1)

;; no auto indentation
(add-hook 'prog-mode-hook
          (lambda ()
            (set (make-local-variable 'electric-indent-functions)
                 (list (lambda (arg) 'no-indent)))))

;; show unncessary whitespace that can mess up your diff
(add-hook 'prog-mode-hook (lambda () (interactive) (setq show-trailing-whitespace 1)))

(add-hook 'prog-mode-hook 'clean-aindent-mode)

(global-set-key (kbd "M-;") 'comment-dwim-2)
(global-set-key (kbd "M-c") 'duplicate-thing)
(yas-global-mode 1)

(require 'smartparens-config)
(setq sp-base-key-bindings 'paredit)
(setq sp-autoskip-closing-pair 'always)
(setq sp-hybrid-kill-entire-symbol nil)
(sp-use-paredit-bindings)

(show-smartparens-global-mode +1)
(smartparens-global-mode 1)

(volatile-highlights-mode t)

(provide 'setup-prog)
