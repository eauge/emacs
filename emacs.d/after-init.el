(package-initialize)

(defconst packages
  '(anzu
    aggressive-indent
    company
    company-tern
    color-theme
    duplicate-thing
    ggtags
    flycheck
    less-css-mode
    go-mode
    helm
    helm-projectile
    helm-gtags
    helm-swoop
    magit
    clean-aindent-mode
    comment-dwim-2
    dtrt-indent
    ws-butler
    iedit
    smartparens
    smartscan
    sml-mode
    projectile
    undo-tree
    js2-mode
    js2-refactor
    web-mode
    zygospore
    ))

(setq auto-save-default nil)

(defun install-packages ()
  "Install all required packages."
  (interactive)
  (unless package-archive-contents
    (package-refresh-contents))
  (dolist (package packages)
    (unless (package-installed-p package)
      (package-install package))))

(install-packages)

(add-to-list 'load-path "~/.emacs.d/custom")

(require 'setup-defaults)
(require 'setup-utils)
(require 'setup-magit)
(require 'setup-ecb)
(require 'setup-dtrt)
(require 'setup-company)
(require 'setup-smartparens)
(require 'setup-projectile)
(require 'setup-ggtags)
(require 'setup-helm)
(require 'setup-helm-gtags)
(require 'setup-flycheck)
(require 'setup-prog)
(require 'setup-web)
(require 'setup-js2)
(require 'setup-cpp)
(require 'setup-go)
(require 'setup-python)
