(require-package 'ggtags)
(require-package 'auto-complete)
(global-auto-complete-mode t)
(ac-config-default)
(require-package 'company)
(add-to-list 'ac-modes 'enh-ruby-mode)


(provide 'init-autocomplete)
