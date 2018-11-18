(use-package php-mode
  :ensure t
  )

(use-package php-extras
  :ensure t
  )

(use-package phpcbf
  :ensure t
  :config
  (custom-set-variables  `(phpcbf-standard "PSR2"))
                                        ;:init
                                        ;(add-hook 'php-mode-hook 'phpcbf-enable-on-save)
  )

;(use-package phpunit
;  :ensure t
;  )
;(use-package lsp-php
;  :ensure t
;  :demand
;  :hook (
;         (php-mode . lsp-mode)
;         (php-mode . lsp-php-enable)
;         )
;  :config
;  (setq lsp-php-show-file-parse-notifications t)
;  (setq lsp-php-workspace-root-detectors '(lsp-php-root-projectile lsp-php-root-composer-json "index.php" "robots.txt")))



(use-package geben
  :ensure t
  )

(use-package ac-php
  :ensure t
  )

;(use-package lsp-php
;  :ensure t
;  :init (progn
;          (add-hook 'php-mode-hook 'lsp-mode)
;          )
;  )
;
;(use-package lsp-ui
;  :ensure t
;  :init (progn
;          (add-hook 'lsp-ui-mode-hook 'lsp-ui-mode)
;          )
;  )




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
