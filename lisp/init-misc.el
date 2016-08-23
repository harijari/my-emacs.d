;;; init-misc.el --- o                               -*- lexical-binding: t; -*-

;; Copyright (C) 2016  Jarosław Sobiecki

;; Author: Jarosław Sobiecki <jsobiecki@docent>
;; Keywords: 

(require-package 'powerline)
(require-package 'powerline-evil)
(require-package 'org-pomodoro)


;; Set the following appearance options early to avoid
;; flashing an unstyled frame, menu or scroll bars.
;(fringe-mode -1)
(tooltip-mode t)
(tool-bar-mode -1)
;(menu-bar-mode -1)
(auto-save-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode -1)
(load-theme 'sanityinc-tomorrow-night)
(setq inhibit-splash-screen t)
(setq create-lockfiles nil)


(global-linum-mode t)
(customize-set-variable 'indent-tabs-mode nil)
(add-hook 'after-init-hook 'org-agenda-list)

(provide 'init-misc)
