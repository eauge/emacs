
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

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
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (gradle-mode company-go yasnippet ws-butler web-mode volatile-highlights undo-tree smartscan smartparens rtags magit js2-mode helm-swoop helm-projectile helm-gtags go-mode gist ggtags flycheck exec-path-from-shell duplicate-thing dtrt-indent company-c-headers comment-dwim-2 cmake-mode cmake-ide clean-aindent-mode anzu)))
 '(safe-local-variable-values
   (quote
    ((cmake-ide-build-dir "/Users/stan/Workspace/OpenTok/bullet/build")
     (cmake-ide-project-dir "/Users/stan/Workspace/OpenTok/bullet")
     (company-clang-arguments "-I/Users/stan/Workspace/OpenTok/bullet/src")
     (company-clang-arguments "-I/Users/stan/Workspace/OpenTok/arrow/arrow/"))))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight normal :height 139 :width normal :background "gray10" :foreground "white"))))
 '(font-lock-comment-face ((t (:foreground "yellow"))))
 '(font-lock-function-name-face ((t (:foreground "LightSkyBlue1" :weight bold))))
 '(mode-line ((t (:background "white" :foreground "black"))))
 '(web-mode-html-tag-face ((t (:foreground "LightSkyBlue"))))
 '(web-mode-param-name-face ((t (:foreground "Snow2")))))
