(require-package 'drupal-mode)

(setq drupal-get-function-args t)

(add-hook 'drupal-mode-hook
          '(lambda ()
             (when (apply 'derived-mode-p drupal-php-modes)
               (flycheck-mode t)
               )
             (setq-default js2-basic-offset 2
                           js2-bounce-indent-p nil )))
(add-hook 'find-file-hook 'auto-insert)

(provide 'init-drupal)
