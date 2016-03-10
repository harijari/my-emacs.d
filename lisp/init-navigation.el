(require-package 'helm)

(require-package 'ido)
(require-package 'helm-gtags)

(setq ido-everywhere t)
(setq ido-enable-flex-matching t)
(ido-mode 1)




(require 'helm-config)
(helm-mode 1)

(provide 'init-navigation)
