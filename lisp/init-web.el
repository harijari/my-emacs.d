(require-package 'web-mode)
(require-package 'scss-mode)
(require-package 'restclient)
(require-package 'skewer-mode)
(require-package 'skewer-reload-stylesheets)
(require-package 'rainbow-mode)
(require-package 'ob-restclient)
(require-package 'company-restclient)

(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
(add-to-list 'auto-mode-alist '("\\.sass\\'" . scss-mode))

(add-to-list 'auto-mode-alist '("\\.twig\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html.twig\\'" . web-mode))

; Register restclient as company backend
;(add-to-list 'company-backends 'company-restclient)

; Enable rainbow mode
(when (maybe-require-package 'rainbow-mode)
  (dolist (hook '(css-mode-hook html-mode-hook sass-mode-hook scss-mode-hook))
(add-hook hook 'rainbow-mode)))

(add-hook 'restclient-mode-hook '(lambda ()
(setq restclient-log-request 't)
(setq restclient-inhibit-cookies 't)
))



(add-hook 'css-mode-hook '(lambda ()
  (skewer-css-mode)
  (skewer-reload-stylesheets-mode)
  (skewer-reload-stylesheets-reload-on-save)
))


(add-hook 'scss-mode-hook 'skewer-css-mode)
(add-hook 'html-mode-hook 'skewer-html-mode)
(provide 'init-web)
