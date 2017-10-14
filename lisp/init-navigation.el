(require-package 'ido)

(use-package ace-jump-mode
  :ensure t
  :bind ("M-C-." . ace-jump-mode))

(use-package ido-vertical-mode
  :ensure t
  :config
  (progn
    (ido-mode 1)
    (ido-vertical-mode 1)
    (setq ido-vertical-define-keys 'up-and-down-left-right)
    )
)

;;(use-package ag
;;  :ensure t
;;  )
;;
;;(use-package dashboard
;;  :ensure t
;;  :config
;;  (dashboard-setup-startup-hook)
;;  (setq dashboard-items '((recents  . 5)
;;                          (bookmarks . 5)
;;                          (projects . 5)
;;                          (agenda . 5)
;;                          (registers . 5)))
;;  )


(setq ido-everywhere t)
(setq ido-enable-flex-matching t)
(setq ido-use-filename-at-point 'nil)


(provide 'init-navigation)
