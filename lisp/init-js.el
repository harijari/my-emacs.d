(use-package js2-mode
  :ensure t
  :config
  (setq-default js2-mode-show-parse-errors nil
                js2-mode-show-strict-warnings nil
                js2-basic-offset 2
                js2-bounce-indent-p nil
                javascript-eslintrc "~/.eslintrc")

  :mode
  ("\\.js\\'" . js2-mode)
  ("\\.pac\\'" . js2-mode)
  :init
  (add-to-list 'interpreter-mode-alist '("node" . js2-mode))
  (add-hook 'js2-mode-hook (lambda ()
  (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t)))
  ;(add-hook 'js2-mode-hook 'skewer-mode)
  (defconst preferred-javascript-indent-level 2)
 )

(use-package json-mode
  :ensure t
  )




(use-package vue-mode
  :ensure t
  :mode ("\\.vue\\'" . vue-mode)
  )

(provide 'init-js)
