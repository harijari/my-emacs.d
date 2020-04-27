(use-package php-mode
  :ensure t
  :mode
  ("\\.php\\'" . php-mode)
  :hook ((php-mode) . flycheck-mode)
  :config
  (require 'dap-php)
  (dap-php-setup)
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

(use-package php-auto-yasnippets
 :ensure t
 )


(use-package flycheck-phpstan
  :ensure t
  )

(use-package flycheck-phpstan
  :ensure t
  :hook ((php-mode) . flycheck-mode)
  :commands (flycheck-mode)
  :config
  (setq-default phpstan-executable 'docker)
  )


(add-hook 'php-mode-hook '(lambda ()
                           ;(require 'ac-php)
                           ;(semantic-mode t)
                           ;(auto-complete-mode t)
                           ;(setq ac-sources `(ac-source-php))
                           ;(ac-php-core-eldoc-setup )
                           ;(define-key php-mode-map  (kbd "C-c C-]") 'ac-php-find-symbol-at-point)   ;goto define
                           ;(define-key php-mode-map  (kbd "C-c C-t") 'ac-php-location-stack-back   ) ;go back
                           ;(ggtags-mode 1)
                           (yas-minor-mode 1)
                           ))

(with-eval-after-load 'php-mode
;;  (require 'php-current)
  (define-key php-mode-map (kbd "C-c C--") 'php-current-class)
  (define-key php-mode-map (kbd "C-c C-=") 'php-current-namespace))
(provide 'init-php)
