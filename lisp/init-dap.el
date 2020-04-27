;;; optionally if you want to use debugger
(use-package dap-mode
  :ensure t
  :commands dap-tooltip-mode
  :hook (
         (php-mode . dap-mode)
         (php-mode . dap-ui-mode)
         )
  :config
  (add-hook 'dap-mode 'dap-tooltip-mode)
  (add-hook 'dap-mode 'dap-ui-locals)
  (add-hook 'dap-mode 'dap-ui-sessions)
  (add-hook 'dap-mode 'dap-ui-expressions)
  (add-hook 'dap-mode 'dap-ui-repl)
  )




(provide 'init-dap)
