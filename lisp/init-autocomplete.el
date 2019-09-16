(use-package ggtags
  :ensure t
  )
;(use-package auto-complete
;  :ensure t
;  :config
;;  (ac-config-default)
;;  (add-to-list 'ac-modes 'enh-ruby-mode)
;;  (global-auto-complete-mode t)
;;  (add-to-list 'ac-sources 'ac-source-semantic)
;  )

(use-package company
  :ensure t
  )

(use-package company-box
  :ensure t
  :hook (company-mode . company-box-mode)
  :config
  (setq company-box-backends-colors nil)
  (setq company-box-show-single-candidate t)
  (setq company-box-max-candidates 50)
  )


(use-package company-lsp
  :ensure t
  :config
  (push 'company-lsp company-backends)
  )


(provide 'init-autocomplete)
