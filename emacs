(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")))

(setq inhibit-startup-message t)
(setq default-directory "~/")

(defalias 'yes-or-no-p 'y-or-n-p)
(load "~/.emacs.d/after-init.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(auto-save-file-name-transforms (quote ((".*" "/tmp" t))))
 '(backup-by-copying t)
 '(ecb-options-version "2.40")
 '(global-hl-line-mode t)
 '(global-linum-mode t)
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p nil)
 '(make-backup-files t)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))

(defun set-light-theme ()
  (interactive)
  (custom-set-faces
   ;; custom-set-faces was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(default ((t (:family "Source Code Pro" :foundry "nil" :slant normal :weight normal :height 141 :width normal :background "white" :foreground "black"))))
   '(font-lock-comment-face ((t (:foreground "DeepSkyBlue3"))))
   '(font-lock-function-name-face ((t (:foreground "DodgerBlue" :weight bold))))
   '(js2-error ((t (:background "red" :foreground "white"))))
   '(js2-external-variable ((t (:background "orange"))))
   '(js2-function-param ((t (:foreground "LimeGree"))))
   '(js2-warning ((t (:background "orange"))))
   '(mode-line ((t (:background "khaki1" :foreground "black"))))
   '(mode-line-inactive ((t (:inherit mode-line :background "grey30" :foreground "grey80"))))
   '(web-mode-html-tag-face ((t (:foreground "LimeGreen")))))
  )

(defun set-dark-theme ()
  (interactive)
  (custom-set-faces
   ;; custom-set-faces was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(default ((t (:family "Source Code Pro" :foundry "nil" :slant normal :weight normal :height 141 :width normal :background "gray14" :foreground "white"))))
   '(font-lock-comment-face ((t (:foreground "yellow"))))
   '(font-lock-function-name-face ((t (:foreground "LightSkyBlue1" :weight bold))))
   '(js2-error ((t (:background "red" :foreground "white"))))
   '(js2-external-variable ((t (:background "orange"))))
   '(js2-function-param ((t (:foreground "Green"))))
   '(js2-warning ((t (:background "orange"))))
   '(mode-line ((t (:background "khaki1" :foreground "black"))))
   '(mode-line-inactive ((t (:inherit mode-line :background "grey30" :foreground "grey80"))))
   '(web-mode-html-tag-face ((t (:foreground "green")))))
  )

(set-dark-theme)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "nil" :slant normal :weight normal :height 141 :width normal :background "gray14" :foreground "white"))))
 '(font-lock-comment-face ((t (:foreground "yellow"))))
 '(font-lock-function-name-face ((t (:foreground "LightSkyBlue1" :weight bold))))
 '(js2-error ((t (:background "red" :foreground "white"))))
 '(js2-external-variable ((t (:background "orange"))))
 '(js2-function-param ((t (:foreground "Green"))))
 '(js2-warning ((t (:background "orange"))))
 '(mode-line ((t (:background "khaki1" :foreground "black"))))
 '(mode-line-inactive ((t (:inherit mode-line :background "grey30" :foreground "grey80"))))
 '(web-mode-html-tag-face ((t (:foreground "LightSkyBlue"))))
 '(web-mode-param-name-face ((t (:foreground "Snow2")))))
