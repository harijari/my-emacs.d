(use-package ido
  :ensure t
  :config
  (progn
    (setq ido-everywhere t)
    (setq ido-enable-flex-matching t)
    (setq ido-use-filename-at-point 'nil)
    )
  )

(use-package ace-jump-mode
  :ensure t
  :bind ("M-C-." . ace-jump-mode)
  )

(use-package ido-vertical-mode
  :ensure t
  :config
  (progn
    (ido-mode 1)
    (ido-vertical-mode 1)
    (setq ido-vertical-define-keys 'up-and-down-left-right)
    )
)

(provide 'init-navigation)
