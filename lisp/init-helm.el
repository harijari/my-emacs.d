(require-package 'helm)
(require-package 'helm-gtags)
(require-package 'helm-ag)

(require 'helm-config)

(global-set-key (kbd "M-x")                          'undefined)
(global-set-key (kbd "M-x")                          'helm-M-x)
(global-set-key (kbd "C-x r b")                      'helm-filtered-bookmarks)

(provide 'init-helm)
