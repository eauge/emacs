(setq-default js2-global-externs '("module" "require" "buster" "sinon" "assert" "refute" "setTimeout" "clearTimeout" "setInterval" "clearInterval" "location" "__dirname" "console" "JSON" "it" "expect" "describe" "afterEach" "beforeEach" "_" "TUGo" "angular" "browser" "by" "element" "process" "before" "after" "module"))

;; js2
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.es6\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . js2-mode))
(add-hook 'js2-mode-hook 'ws-butler-mode)

;; Add js2-refactor to js2-mode
(require 'js2-refactor)
(add-hook 'js2-mode-hook #'js2-refactor-mode)

(custom-set-variables
 '(js2-bounce-indent-p t))


(custom-set-faces

 '(js2-error ((t (:background "red" :foreground "white"))))
 '(js2-external-variable ((t (:background "orange"))))
 '(js2-function-param ((t (:foreground "Green"))))
 '(js2-warning ((t (:background "orange"))))
 )

(require 'flycheck)
(flycheck-define-checker jsxhint-checker
  "A JSX syntax and style checker based on JSXHint."

  :command ("jsxhint" source)
  :error-patterns
  ((error line-start (1+ nonl) ": line " line ", col " column ", " (message) line-end))
  :modes (js2-mode))

(add-hook 'js2-mode-hook
          (lambda ()
            (when (and (> (length (buffer-name)) 9) (equal (substring (buffer-name) -9) ".react.js"))
            ;; enable flycheck
              (flycheck-select-checker 'jsxhint-checker)
              (flycheck-mode))))

(setq exec-path (cons "/usr/local/bin" exec-path))
(add-hook 'js2-mode-hook 'tern-mode)
(add-to-list 'company-backends 'company-tern)

(provide 'setup-js2)
