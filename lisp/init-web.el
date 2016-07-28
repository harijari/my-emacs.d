(require-package 'web-mode)
(require-package 'scss-mode)
(require-package 'restclient)
(require-package 'skewer-mode)
(require-package 'skewer-reload-stylesheets)
(require-package 'rainbow-mode)

(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
(add-to-list 'auto-mode-alist '("\\.sass\\'" . scss-mode))

(add-to-list 'auto-mode-alist '("\\.twig\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html.twig\\'" . web-mode))


(add-hook 'css-mode-hook '(lambda ()
  (skewer-css-mode)
  (skewer-reload-stylesheets-mode)
  (skewer-reload-stylesheets-reload-on-save)
))

(add-hook 'scss-mode-hook 'rainbow-mode)
(add-hook 'scss-mode-hook 'skewer-css-mode)
(add-hook 'html-mode-hook 'skewer-html-mode)
(provide 'init-web)
