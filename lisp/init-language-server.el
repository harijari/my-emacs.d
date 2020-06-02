;; Language server stuff
(use-package lsp-mode
  :ensure t
  :hook ((php-mode json-mode scss-mode css-mode web-mode bash-mode vue-mode js2-mode) . lsp-deferred)
  :config
  (lsp-lens-mode)
  (custom-set-variables
  '(lsp-enable-file-watchers nil)
  '(lsp-enable-which-key-integration)
  '(lsp-enable-which-key-integration nil)
  '(lsp-intelephense-files-associations ["*.php" "*.phtml" "*.inc" "*.module"])
  )
  :commands (lsp lsp-deferred))

(use-package posframe
  :ensure t
  )


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


(provide 'init-language-server)
