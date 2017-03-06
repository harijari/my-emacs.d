(require-package 'php-mode)
(require-package 'ac-php)
;(require-package 'php-auto-yasnippets)
(require-package 'php-extras)
;(require-package 'ede-php-autoload)

(require 'ac-php)
;(require 'php-auto-yasnippets)
(require 'ede)


(global-ede-mode 1)

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
     



(add-hook 'php-mode-hook '(lambda ()
                           (auto-complete-mode t)
                           (add-to-list 'ac-sources  'ac-source-php )
                           (yas-global-mode 1)

                           (define-key php-mode-map  (kbd "C-c C-]") 'ac-php-find-symbol-at-point)   ;goto define
                           (define-key php-mode-map  (kbd "C-c C-t") 'ac-php-location-stack-back   ) ;go back
                           (define-key php-mode-map (kbd "C-c C-y") 'yas/create-php-snippet)
                           (ggtags-mode 1)
                           ;(payas/ac-setup)
                           ))
(eval-after-load 'php-mode
  '(require 'php-ext))
(provide 'init-php)
