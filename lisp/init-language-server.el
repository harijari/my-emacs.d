;; Language server stuff
(use-package lsp-mode
  :ensure t)
(use-package lsp-ui
  :ensure t
  :hook (lsp-mode . lsp-ui-mode))

(use-package company-lsp
  :ensure t
  :hook (
         (lsp-mode . company-mode)
         )
  :config
  (push 'company-lsp company-backends)
  )

(provide 'init-language-server)
