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


(custom-set-variables
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(custom-enabled-themes (quote (dracula)))
 '(delete-selection-mode nil)
 '(font-use-system-font t)
 '(indent-tabs-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 )

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip ((t (:background "#c5c8c6" :foreground "#1d1f21")))))

(provide 'init-theme)
