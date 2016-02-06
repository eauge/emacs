(setenv "GOPATH" "/Users/stan/Workspace/Golang")
(setenv "GOROOT" "/usr/local/opt/go/libexec")
(add-to-list 'load-path "/Users/stan/Workspace/Golang/src/github.com/dougm/goflymake")
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



(setq exec-path (cons "/Users/stan/Workspace/Golang/bin" exec-path))
(setq exec-path (cons "/usr/local/go/bin" exec-path))
(setenv "PATH" "/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/stan/Workspace/OpenTok/squid/bin:/usr/local/sbin/:/usr/local/opt/go/libexec/bin:/Users/stan/Workspace/Golang/bin")
(add-hook 'before-save-hook 'gofmt-before-save)

(provide 'setup-go)
