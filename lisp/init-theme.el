(global-linum-mode t)

;(use-package oceanic-theme
;  :ensure t
;  :config
;    (load-theme 'oceanic t)
;  )


(use-package spaceline
  :ensure t
  :init
  (setq powerline-default-separator 'arrow-fade)
  :config
  (require 'spaceline-config)
  )


(use-package dracula-theme
  :ensure t
  :config
    (load-theme 'dracula t)
  )



(provide 'init-theme)
