;;; init-dockerfile.el --- This is docker related settings  -*- lexical-binding: t; -*-

;; Copyright (C) 2016  Jarosław Sobiecki

;; Author: Jarosław Sobiecki <jsobiecki@docent>
;; Keywords: docker



(use-package docker
  :ensure t
  )

;; (use-package lsp-dockerfile
;;   :ensure t
;;   :hook (
;;          (dockerfile-mode . lsp-dockerfile-enable)
;;          )
;;   )

(use-package dockerfile-mode
  :ensure t
  )

(use-package docker-tramp
  :ensure t
  )

(provide 'init-dockerfile)
