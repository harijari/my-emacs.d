(require-package 'php-mode)
(require-package 'ac-php)
(require-package 'php-auto-yasnippets)
(require-package 'php-extras)

(require 'ac-php)
(require 'php-auto-yasnippets)


(global-ede-mode 1)



(add-hook 'php-mode-hook '(lambda ()
                           (auto-complete-mode t)
                           (add-to-list 'ac-sources  'ac-source-php )
                           (yas-global-mode 1)

                           (define-key php-mode-map  (kbd "C-]") 'ac-php-find-symbol-at-point)   ;goto define
                           (define-key php-mode-map  (kbd "C-t") 'ac-php-location-stack-back   ) ;go back
                           (define-key php-mode-map (kbd "C-c C-y") 'yas/create-php-snippet)

			   (ggtags-mode 1)
                           (payas/ac-setup)
                           ))
(provide 'init-php)
