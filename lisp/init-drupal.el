(require-package 'drupal-mode)

(setq drupal-get-function-args t)

(add-hook 'drupal-mode-hook
          '(lambda ()
             (when (apply 'derived-mode-p drupal-php-modes)
               (flycheck-mode t)
               )
             (setq-default js2-basic-offset 2
                           js2-bounce-indent-p nil
                           tab-width 2
                           indent-tabs-mode nil
                           css-indent-offset 2
                           c-basic-offset 2
                           flycheck-phpcs-standard "Drupal and DrupalPractice"
                           phpcbf-standard 'Drupal
                           flycheck-php-phpmd-executable "drupal-phpmd"
                           flycheck-phpmd-rulesets '("cleancode" "codesize" "design" "unusedcode")
                           )
             ))
;(add-hook 'find-file-hook 'auto-insert)

(provide 'init-drupal)
