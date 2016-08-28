(setq inhibit-startup-message t)
(setq default-directory "~/")

(defalias 'yes-or-no-p 'y-or-n-p)
(load "~/.emacs.d/after-init.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(global-hl-line-mode t)
 '(global-linum-mode t)
 '(scroll-bar-mode nil)
 '(menu-bar-mode nil)
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight normal :height 119 :width normal :background "gray10" :foreground "white"))))
 '(mode-line ((t (:background "white" :foreground "black"))))
 '(font-lock-comment-face ((t (:foreground "yellow"))))
 '(font-lock-function-name-face ((t (:foreground "LightSkyBlue1" :weight bold))))
 )
