;; Language server stuff
(use-package lsp-mode
  :ensure t
  :hook ((php-mode json-mode scss-mode css-mode web-mode bash-mode vue-mode js2-mode) . lsp-deferred)
  :config
  (lsp-lens-mode)

  (custom-set-variables
  '(lsp-intelephense-files-associations ["*.php" "*.phtml" "*.inc" "*.module"])
  '(lsp-enable-file-watchers nil)
  )
  :commands (lsp lsp-deferred))




;; optionally
(use-package lsp-ui
  :ensure t
  :commands (lsp-ui)
  :config
  (define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
  (define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)
  :bind
  (
   ("C-c C-]" . 'lsp-ui-peek-find-definitions)
   ("C-c C-t" . 'lsp-ui-peek-find-references)
   ("C-c C-n" . 'lsp-ui-peek-jump-forward)
   )
  )
(use-package company-lsp
  :commands company-lsp
  )
(use-package helm-lsp
  :ensure t
  :commands helm-lsp-workspace-symbol
  )
(use-package lsp-treemacs
  :ensure t
  :commands lsp-treemacs-errors-list
  )

(custom-set-variables
 '(lsp-intelephense-files-associations ["*.php" "*.phtml" "*.inc" "*.module"])
 '(lsp-enable-file-watchers nil)
 )

(provide 'init-language-server)
