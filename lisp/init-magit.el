(require-package 'magit)

(use-package magit
  :ensure t
  :bind (
         ("C-x g s" . magit-status)
         ("C-x g b" . magit-branch-manager)
         ("C-x g l" . magit-log)
         ("C-x g c" . magit-checkout)
         ("C-x g :" . magit-git-command)
         )
  
  )

(use-package magit-gitflow
  :ensure t
  :hook (
         (magit-mode . turn-on-magit-gitflow)
         )
  )

(provide 'init-magit)
