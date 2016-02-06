(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.api\\'" . web-mode))

(setq web-mode-content-types-alist
      '(("json" . "/some/path/*\\.api\\'")
        ("xml" . "/other/path/*\\.api\\'")))
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)

(custom-set-faces
 '(web-mode-html-tag-face ((t (:foreground "LightSkyBlue"))))
 '(web-mode-param-name-face ((t (:foreground "Snow2")))))

(provide 'setup-web)
