;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path "~/.emacs.d/experimental/semantic-php")
(add-to-list 'load-path "~/.emacs.d/experimental/ede-php-autoload")
(setq custom-file "~/.emacs.d/lisp/init-customize.el")

;; Packages "stolen" from purcell.
(require 'init-customize)
(require 'init-compat)
(require 'init-utils)
(require 'init-site-lisp)
(require 'init-elpa)


(require 'init-projectile)
(require 'init-autocomplete)
(require 'init-ecb)
(require 'init-semantic)
(require 'init-navigation)
(require 'init-helm)
(require 'init-qa)
(require 'init-web)
(require 'init-yaml)
(require 'init-magit)
(require 'init-org-mode)
(require 'init-csv)
(require 'init-ruby)
 
 
(require 'init-php)
(require 'init-js)
(require 'init-evil)
(require 'init-drupal)
(require 'init-editor)
(require 'init-emmet)
 
(require 'init-misc)
(require 'init-hippie)
(require 'init-dockerfile)
(require 'init-markdown)
(require 'init-local)
