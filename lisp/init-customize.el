;;; init-customize.el --- Custom files               -*- lexical-binding: t; -*-

;; Copyright (C) 2016  Jarosław Sobiecki

;; Author: Jarosław Sobiecki <jsobiecki@docent>
;; Keywords: 

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; 

;;; Code:



(provide 'init-customize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(custom-enabled-themes (quote (dracula)))
 '(custom-safe-themes
   (quote
    ("d0fe9efeaf9bbb6f42ce08cd55be3f63d4dfcb87601a55e36c3421f2b5dc70f3" "13fa7a304bd53aa4c0beec4c25c4f811de499bce9deb326798265ed0015b3b78" "8e9b37a4eb68542bb3f6d76afd303fb45196f0c536863b61b9b76a64bdc421ef" "a41b81af6336bd822137d4341f7e16495a49b06c180d6a6417bf9fd1001b6d2b" "63df625509cec7b2b7deba1d48ef07ffbee99c735a95d130ad9d1fc3df8b9a34" "55c2069e99ea18e4751bd5331b245a2752a808e91e09ccec16eb25dadbe06354" "12bacee81d067acf07dec4c867be541a04744a6ac6a39636de25a2c77e9b573c" "2642a1b7f53b9bb34c7f1e032d2098c852811ec2881eec2dc8cc07be004e45a0" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "6f441c0e5d8199f08eb4b73e9c697710282bcae95e5925b7649ddfa8cea2e24c" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" default)))
 '(delete-selection-mode nil)
 '(ecb-compile-window-width (quote frame) t)
 '(ecb-layout-name "left9" t)
 '(ecb-options-version "2.50")
 '(ecb-toggle-layout-sequence (quote ("left13" "left9")) t)
 '(ede-project-directories
   (quote
    ("/home/jsobiecki/workspace/codebase/ratioweb/culturebackend/app")))
 '(font-use-system-font t)
 '(geben-path-mappings
   (quote
    (("/home/jsobiecki/workspace/codebase/ratioweb/culture.pl/" "/var/www/html/"))))
 '(indent-tabs-mode nil)
 '(lsp-enable-file-watchers nil)
 '(lsp-enable-which-key-integration nil)
 '(lsp-intelephense-files-associations ["*.php" "*.phtml" "*.inc" "*.module"])
 '(lsp-intelephense-licence-key "00V44OWGK0WYIP0")
 '(package-selected-packages
   (quote
    (posframe php-skeleton lsp-php lsp-ui lsp-vue k8s-mode find-file-in-project auctex dashboard spaceline ag ede-php-autoload-drupal ede-php-autoload-composer-installers sublimity ido-vertical-mode apache-mode org-babel ob-php editorconfig ox-reveal org-reveal dracula-theme vue-mode xref-js2 vue-html-mode org-journal less-css-mode phpcbf iedit dired-sort ede-php-autoload company-restclient ob-restclient column-marker org-bullets ace-jump-mode moccur-edit color-moccur atom-dark-theme dired-sorted org-package mmm-mode markdown-mode powerline evil json-mode php-mode magit skewer-mode flycheck helm auto-complete yard-mode yaml-mode web-mode vcl-mode tern-auto-complete skewer-reload-stylesheets scss-mode robe restclient rainbow-mode projectile powerline-evil php-refactor-mode php-extras php-auto-yasnippets org-pomodoro org-caldav nvm mkdown magit-gitflow magit-gh-pulls js-comint helm-gtags helm-ag git-timemachine git-link git-gutter-fringe git-blame ggtags geben fullframe flycheck-pos-tip feature-mode evil-visualstar evil-leader evil-jumper evil-easymotion eslint-fix enh-ruby-mode emmet-mode ecb drupal-mode doctags dockerfile-mode docker dired-narrow csv-nav csv-mode company color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized ac-php ac-js2)))
 '(phpcbf-standard "PSR2")
 '(safe-local-variable-values
   (quote
    ((phpstan-level . 1)
     (phpstan-config-file root . "/home/jsobiecki/workspace/codebase/ratioweb/dwi/phpstan.neon")
     (phpstan-working-dir root . "/home/jsobiecki/workspace/codebase/ratioweb/dwi/")
     (phpstan-executable . /home/jsobiecki/\.config/composer/vendor/bin/phpstan)
     (phpstan-working-dir root)
     (geben-path-mappings quote
                          (("/home/jsobiecki/workspace/codebase/ratioweb/klevia" "/var/www/html/app")))
     (setq skewer-reload-stylesheets-compile-command "cd app/themes/custom/stargres && compass compile")
     (setq skewer-reload-stylesheets-compile-command "compass compile")
     (css-indent-offset 2))))
 '(show-paren-mode t)
 '(sql-connection-alist
   (quote
    (("culture"
      (sql-product
       (quote mysql))
      (sql-user "root")
      (sql-database "culture")
      (sql-server "db"))
     ("settled"
      (sql-product
       (quote mysql))
      (sql-user "drupal")
      (sql-database "drupal")
      (sql-server "127.0.0.1")))))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip ((t (:background "#c5c8c6" :foreground "#1d1f21")))))
