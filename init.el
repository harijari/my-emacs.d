

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-compat)
(require 'init-utils)
(require 'init-site-lisp)
(require 'init-elpa)



(setq-local eldoc-documentation-function #'ggtags-eldoc-function)


(require 'init-theme)
(require 'init-navigation)
(require 'init-misc)
(require 'init-qa)
(require 'init-web)


(require 'init-php)
(require 'init-js)
(require 'init-autocomplete)
(require 'init-evil)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(magit-diff-section-arguments (quote ("--no-ext-diff")))
 '(scroll-bar-mode nil)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(tool-bar-position (quote right)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
