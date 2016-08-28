(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("melpa" . "http://melpa.org/packages/")))
(package-initialize)

(defconst packages
  '(anzu
    clean-aindent-mode
    comment-dwim-2
    company
    company-c-headers
    dtrt-indent
    duplicate-thing
    exec-path-from-shell
    flycheck
    ggtags
    go-mode
    helm
    helm-gtags
    helm-projectile
    helm-swoop
    js2-mode
    magit
    projectile
    smartparens
    smartscan
    undo-tree
    volatile-highlights
    web-mode
    ws-butler
    yasnippet
    ))

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

;; tell emacs to initialize the $PATH env
;; variable
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(exec-path-from-shell-copy-env "PATH")

;; setup for emacs defaults
(require 'setup-defaults)
(require 'setup-utils)

;; setup additional packages installed
(require 'setup-company)
(require 'setup-flycheck)
(require 'setup-ggtags)
(require 'setup-helm)
(require 'setup-js)
(require 'setup-magit)
(require 'setup-prog)
(require 'setup-projectile)
(require 'setup-undo-tree)
(require 'setup-web)
(require 'setup-ws-butler)

;; setup languages
(require 'setup-cc)
(require 'setup-go)
