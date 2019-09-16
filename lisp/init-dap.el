;;; optionally if you want to use debugger
(use-package dap-mode
  :ensure t
  :hook (
         (php-mode . dap-mode)
         (php-mode . dap-ui-mode)
                  )
  )




(provide 'init-dap)
