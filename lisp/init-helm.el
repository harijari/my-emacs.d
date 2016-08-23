(require-package 'helm)
(require-package 'helm-gtags)
(require-package 'helm-ag)

(require 'helm-config)

(global-set-key (kbd "M-x")                          'undefined)
(global-set-key (kbd "M-x")                          'helm-M-x)
(global-set-key (kbd "C-x r b")                      'helm-filtered-bookmarks)
(global-set-key (kbd "C-x r o")                      'helm-do-ag-this-file)
(global-set-key (kbd "C-x r p")                      'helm-do-ag-project-root)
(helm-mode 1)

(provide 'init-helm)
