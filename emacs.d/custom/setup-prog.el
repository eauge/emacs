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

(provide 'setup-prog)
