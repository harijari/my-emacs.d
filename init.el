;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path "~/.emacs.d/experimental/use-package")
(setq custom-file "~/.emacs.d/lisp/init-customize.el")

;; Packages "stolen" from purcell.
(require 'use-package)
(require 'init-customize)
(require 'init-compat)
(require 'init-utils)
(require 'init-site-lisp)
(require 'init-elpa)

(require 'init-projectile)
(require 'init-autocomplete)
(require 'init-language-server)
(require 'init-dap)
;(require 'init-ecb)
;(require 'init-semantic)
(require 'init-navigation)
(require 'init-helm)
(require 'init-qa)
(require 'init-web)
(require 'init-yaml)
(require 'init-magit)
(require 'init-org-mode)
(require 'init-csv)
(require 'init-ruby)
(require 'init-latex)
(require 'init-varnish)
(require 'init-go)
(require 'init-gitlab)
 
 
(require 'init-php)
(require 'init-js)
(require 'init-reveal)
(require 'init-evil)
(require 'init-drupal)
(require 'init-editor)
(require 'init-emmet)
(require 'init-dired)
(require 'init-spell)

(require 'init-k8)
 
(require 'init-misc)
(require 'init-hippie)
(require 'init-dockerfile)
(require 'init-markdown)
(require 'init-mmm)
(require 'init-apache)
(require 'init-theme)
(require 'init-snippets)
(require 'init-local)

(put 'narrow-to-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
