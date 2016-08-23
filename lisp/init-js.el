(maybe-require-package 'json-mode)
(maybe-require-package 'js2-mode)
(maybe-require-package 'js-comint)
(maybe-require-package 'eslint-fix)
(require-package 'tern-auto-complete)

(add-to-list 'auto-mode-alist '("\\.js\\'"    . js2-mode))
(add-to-list 'auto-mode-alist '("\\.pac\\'"   . js2-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))

(add-hook 'js2-mode-hook 'skewer-mode)
(add-hook 'js2-mode-hook 'tern-mode)
(after-load 'js2-mode
  (setq-default js2-mode-show-parse-errors nil
                js2-mode-show-strict-warnings nil
                javascript-eslintrc "~/.eslintrc"))




(eval-after-load 'tern
   '(progn
      (require 'tern-auto-complete)
      (tern-ac-setup)))



(provide 'init-js)
