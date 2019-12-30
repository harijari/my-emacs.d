(global-linum-mode t)

(use-package oceanic-theme
  :ensure t
  :config
    (load-theme 'oceanic t)
  )


(use-package spaceline
  :ensure t
  :init
  (setq powerline-default-separator 'arrow-fade)
  :config
  (require 'spaceline-config)
  )




(provide 'init-theme)
