(require-package 'php-mode)
(require-package 'ac-php)
(require-package 'php-extras)
(require-package 'ede-php-autoload)


(use-package phpcbf
  :ensure t
  :config
  (custom-set-variables  `(phpcbf-standard "PSR2"))
                                        ;:init
                                        ;(add-hook 'php-mode-hook 'phpcbf-enable-on-save)
  )


(use-package geben
  :ensure t
  )


(use-package ede-php-autoload-composer-installers
  :ensure t
  :after ede-php-autoload
  )

(use-package ede-php-autoload-drupal
  :ensure t
  :after ede-php-autoload
  )




(use-package ede-php-autoload
  :ensure t
  :init (progn
          (global-ede-mode 1)
          (add-hook 'php-mode-hook 'ede-php-autoload-mode)
          )
  )

(add-hook 'php-mode-hook '(lambda ()
                           (require 'ac-php)
                           (semantic-mode t)
                           (auto-complete-mode t)
                           (setq ac-sources `(ac-source-php))
                           (ac-php-core-eldoc-setup )
                           (define-key php-mode-map  (kbd "C-c C-]") 'ac-php-find-symbol-at-point)   ;goto define
                           (define-key php-mode-map  (kbd "C-c C-t") 'ac-php-location-stack-back   ) ;go back
                           (ggtags-mode 1)
                           (yas-minor-mode 1)
                           ))
(eval-after-load 'php-mode
  '(require 'php-ext))

(with-eval-after-load 'php-mode
;;  (require 'php-current)
  (define-key php-mode-map (kbd "C-c C--") 'php-current-class)
  (define-key php-mode-map (kbd "C-c C-=") 'php-current-namespace))
(provide 'init-php)
