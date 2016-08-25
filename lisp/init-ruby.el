;;; init-ruby.el --- Ruby defaults                   -*- lexical-binding: t; -*-

;; Copyright (C) 2016  Jarek Sobiecki

;; Author: Jarek Sobiecki <jsobiecki@docent>

(require-package 'enh-ruby-mode)
(require-package 'robe)
(require-package 'yard-mode)

(add-to-list 'auto-mode-alist
             '("\\(?:\\.rb\\|ru\\|rake\\|thor\\|jbuilder\\|gemspec\\|podspec\\|/\\(?:Gem\\|Rake\\|Cap\\|Thor\\|Vagrant\\|Guard\\|Pod\\)file\\)\\'" . enh-ruby-mode))

(add-hook 'enh-ruby-mode-hook 'robe-mode)
(add-hook 'enh-ruby-mode-hook 'yard-mode)


(provide 'init-ruby)
