;;; init-misc.el --- o                               -*- lexical-binding: t; -*-

;; Copyright (C) 2016  Jarosław Sobiecki

;; Author: Jarosław Sobiecki <jsobiecki@docent>
;; Keywords: 


(use-package powerline
  :ensure t)
(use-package powerline-evil
  :ensure t)

(use-package atom-dark-theme
  :ensure t)

(use-package column-marker
  :ensure t)

(use-package iedit
  :ensure t)

(use-package color-moccur
  :ensure t
  :commands (isearch-moccur isearch-all)
  :bind (("M-s O" . moccur)
         :map isearch-mode-map
         ("M-o" . isearch-moccur)
         ("M-O" . isearch-moccur-all))
  :init
  (setq isearch-lazy-highlight t)
  :config
  (use-package moccur-edit
    :ensure t))

(use-package windmove
  ;; :defer 4
  :ensure t
  :config
  ;; use command key on Mac
  (windmove-default-keybindings 'super)
  ;; wrap around at edges
  (setq windmove-wrap-around t))



;; Set the following appearance options early to avoid
;; flashing an unstyled frame, menu or scroll bars.
;(fringe-mode -1)
(tooltip-mode t)
(tool-bar-mode -1)
;(menu-bar-mode -1)
(auto-save-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode -1)

(setq inhibit-splash-screen t)
(setq create-lockfiles nil)


(global-linum-mode t)
(customize-set-variable 'indent-tabs-mode nil)
(add-hook 'after-init-hook 'org-agenda-list)

(add-to-list 'auto-mode-alist '("\\.vcl\\'"    . vcl-mode))

(setq-default
 column-number-mode t
)

(global-auto-revert-mode)
(setq global-auto-revert-non-file-buffers t
auto-revert-verbose nil)

(provide 'init-misc)
