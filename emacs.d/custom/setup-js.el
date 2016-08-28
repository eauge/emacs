(setq js2-basic-offset 2)
(setq js2-bounce-indent-p nil)

;; enable js2 mode for js files
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-hook 'js2-mode-hook 'ws-butler-mode)

(provide 'setup-js)
