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
 '(custom-safe-themes
   (quote
    ("6f441c0e5d8199f08eb4b73e9c697710282bcae95e5925b7649ddfa8cea2e24c" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" default)))
 '(ecb-compile-window-width (quote frame) t)
 '(ecb-layout-name "left9" t)
 '(ecb-toggle-layout-sequence (quote ("left13" "left9")) t)
 '(geben-path-mappings
   (quote
    (("/home/jsobiecki/workspace/codebase/ratioweb/culture.pl/" "/var/www/html/"))))
 '(package-selected-packages
   (quote
    (phpcbf iedit dired-sort ede-php-autoload company-restclient ob-restclient column-marker org-bullets ace-jump-mode moccur-edit color-moccur atom-dark-theme dired-sorted org-package mmm-mode markdown-mode powerline evil json-mode php-mode magit skewer-mode flycheck helm auto-complete yard-mode yaml-mode web-mode vcl-mode tern-auto-complete skewer-reload-stylesheets scss-mode robe restclient rainbow-mode projectile powerline-evil php-refactor-mode php-extras php-auto-yasnippets org-pomodoro org-caldav nvm mkdown magit-gitflow magit-gh-pulls js-comint helm-gtags helm-ag git-timemachine git-link git-gutter-fringe git-blame ggtags geben fullframe flycheck-pos-tip feature-mode evil-visualstar evil-leader evil-jumper evil-easymotion eslint-fix enh-ruby-mode emmet-mode ecb drupal-mode doctags dockerfile-mode docker dired-narrow csv-nav csv-mode company color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized ac-php ac-js2)))
 '(phpcbf-standard "PSR2")
 '(safe-local-variable-values
   (quote
    ((setq skewer-reload-stylesheets-compile-command "cd app/themes/custom/stargres && compass compile")
     (setq skewer-reload-stylesheets-compile-command "compass compile")
     (css-indent-offset 2))))
 '(sql-connection-alist
   (quote
    (("culture"
      (sql-product
       (quote mysql))
      (sql-user "root")
      (sql-database "culture")
      (sql-server "db"))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
