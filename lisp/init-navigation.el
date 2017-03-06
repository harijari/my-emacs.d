(require-package 'ido)

(use-package ace-jump-mode
  :ensure t
  :bind ("M-C-." . ace-jump-mode))

(setq ido-everywhere t)
(setq ido-enable-flex-matching t)
(setq ido-use-filename-at-point 'nil)
(ido-mode 1)





(provide 'init-navigation)
