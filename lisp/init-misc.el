;;; init-misc.el --- o                               -*- lexical-binding: t; -*-

;; Copyright (C) 2016  Jarosław Sobiecki

;; Author: Jarosław Sobiecki <jsobiecki@docent>
;; Keywords: 

(require-package 'projectile)
(require-package 'magit)
(require-package 'yaml-mode)
(require-package 'cl)
(require-package 'powerline)
(require-package 'powerline-evil)
(require-package 'dired-narrow)
(require-package 'git-gutter-fringe)


(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(powerline-default-theme)
;; Enable projectile mode
(linum-mode t)
(projectile-global-mode)
(global-git-gutter-mode +1)

(provide 'init-misc)
