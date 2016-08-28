(defconst goflymake "github.com/dougm/goflymake")
(defconst goimports "golang.org/x/tools/cmd/goimports")
(defconst gocover "golang.org/x/tools/cmd/cover")
(defconst gorename "golang.org/x/tools/cmd/gorename")
(defconst godef "github.com/rogpeppe/godef")

(defconst go-packages
  '(
   goflymake
   goimports
   gocover
   gorename
   godef
   ))

(exec-path-from-shell-copy-env "GOPATH")
(defconst GOPATH (getenv "GOPATH"))

(defun install-go-packages ()
  "Install all required go packages."
  (interactive)
  (dolist (package go-packages)
    (if (not (file-exists-p (concat GOPATH "/src/" (symbol-value package))))
      (shell-command
       (concat "go get " (symbol-value package)))
      )))

(install-go-packages)

(add-to-list 'load-path
             (concat GOPATH "/src/" goflymake))
(require 'go-flycheck)

(defun my-go-mode-hook ()
  ; Use goimports instead of go-fmt
  (setq gofmt-command "goimports")
  ; Call Gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)
  ; Customize compile command to run go build
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go build -v && go test -v && go vet"))
  ; Godef jump key binding
  (local-set-key (kbd "M-.") 'godef-jump))

(add-hook 'go-mode-hook 'my-go-mode-hook)
(add-hook 'go-mode-hook 'company-mode)
(add-hook 'go-mode-hook
          (lambda()
            (setq tab-width 2)
            (setq standard-indent 2)
            (set (make-local-variable 'company-backends) '(company-go))
            (company-mode)))

(add-hook 'before-save-hook 'gofmt-before-save)

(provide 'setup-go)
