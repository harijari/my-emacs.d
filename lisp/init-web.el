(require-package 'web-mode)
(require-package 'scss-mode)
(require-package 'restclient)
(require-package 'skewer-mode)
(require-package 'skewer-reload-stylesheets)
(require-package 'rainbow-mode)
(require-package 'ob-restclient)
(require-package 'company-restclient)


(use-package less-css-mode
  :ensure t
  )

(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
(add-to-list 'auto-mode-alist '("\\.sass\\'" . scss-mode))

(add-to-list 'auto-mode-alist '("\\.twig\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html.twig\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl.php\\'" . web-mode))

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



(use-package skewer-mode
  :ensure t
  :hook (
         (scss-mode . skewer-css-mode)
         (html-mode . skewer-html-mode)

         )
  :config
  
  )

(use-package lsp-html
  :ensure t
  :hook (
         (html-mode . lsp-html-enable)
         (web-mode . lsp-html-enable)
         )
  )

(use-package lsp-css
  :ensure t
  :hook (
         (css-mode . my-css-mode-setup)
         (less-mode . lsp-less-enable)
         (sass-mode . lsp-scss-enable)
         (scss-mode . lsp-scss-enable)
         )
  :init
  (defun my-css-mode-setup ()
  (when (eq major-mode 'css-mode)
    ;; Only enable in strictly css-mode, not scss-mode (css-mode-hook
    ;; fires for scss-mode because scss-mode is derived from css-mode)
    (lsp-css-enable)))
  
  )

(provide 'init-web)
