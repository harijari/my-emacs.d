(require-package 'magit)
(require-package 'magit-gitflow)
(require-package 'git-gutter-fringe)
(require-package 'git-blame)
(require-package 'git-link)


(global-git-gutter-mode +1)

;; Bind magit related commands to prefix `C-x g'.
(global-set-key (kbd "C-x g s") 'magit-status)
(global-set-key (kbd "C-x g b") 'magit-branch-manager)
(global-set-key (kbd "C-x g l") 'magit-log)
(global-set-key (kbd "C-x g c") 'magit-checkout)
(global-set-key (kbd "C-x g :") 'magit-git-command)


(provide 'init-magit)