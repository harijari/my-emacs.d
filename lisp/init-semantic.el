(semantic-mode 1)


(use-package cedet
  :init
  (add-hook 'semantic-mode-hook '(lambda()
                                   (global-semantic-show-parser-state-mode 1)
                                   (global-semantic-decoration-mode 1)
                                   (global-semantic-idle-local-symbol-highlight-mode 1)
                                   (global-semantic-mru-bookmark-mode 1)
                                   )
  ))


(use-package srecode
  )

(provide 'init-semantic)
