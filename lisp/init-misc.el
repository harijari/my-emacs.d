;;; init-misc.el --- o                               -*- lexical-binding: t; -*-

;; Copyright (C) 2016  Jarosław Sobiecki

;; Author: Jarosław Sobiecki <jsobiecki@docent>
;; Keywords: 


(use-package powerline
  :ensure t)
(use-package powerline-evil
  :ensure t)

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package atom-dark-theme
  :ensure t)

(use-package iedit
  :ensure t)

(use-package artbollocks-mode
  :ensure t)

(use-package langtool
  :ensure t
  :init
    (setq langtool-language-tool-jar "/home/jsobiecki/opt/languagetool/languagetool-commandline.jar")
  )

(use-package editorconfig
  :ensure t
  :config
  (editorconfig-mode 1))

(use-package diffview
  :ensure t
  )

(use-package undo-tree
  :defer t
  :ensure t
  :diminish undo-tree-mode
  :config
  (progn
    (global-undo-tree-mode)
    (setq undo-tree-visualizer-timestamps t)
    (setq undo-tree-visualizer-diff t)))



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

;; (use-package sublimity
;;   :ensure t
;;   :config
;;   (progn
;;     (require 'sublimity-scroll)
;;     (require 'sublimity-map) ;; experimental
;;     (require 'sublimity-attractive)
;; 
;;     )
;;   )
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
(setq dashboard-items '((recents  . 5)
                        (bookmarks . 5)
                        (projects . 5)
                        (agenda . 5)
                        (registers . 5)))
  )



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
