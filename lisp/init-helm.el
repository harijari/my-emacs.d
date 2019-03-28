
(use-package helm
  :demand t
  :config
  (helm-mode 1)
  :bind (
         ("M-x" . helm-M-x)
         ("C-x r b" . helm-filtered-bookmarks)
         ("C-x r o" . helm-do-ag-this-file)
         ("C-x r p" . helm-do-ag-project-root)
         ("C-x c i" . helm-semantic-or-imenu)
         )
  )

(use-package helm-ag
  :ensure t
  )

(use-package helm-gtags
  :ensure t
  )

(provide 'init-helm)
