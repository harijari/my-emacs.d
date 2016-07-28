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
 '(custom-safe-themes
   (quote
    ("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" default)))
 '(ecb-compile-window-width (quote frame) t)
 '(ecb-layout-name "left9" t)
 '(ecb-toggle-layout-sequence (quote ("left13" "left9")) t)
 '(org-agenda-files
   (quote
    ("/home/jsobiecki/.emacs.d/org-files/bills.org" "/home/jsobiecki/.emacs.d/org-files/business.org" "/home/jsobiecki/.emacs.d/org-files/personal-cal.org" "/home/jsobiecki/.emacs.d/org-files/pesonal-cal.org" "/home/jsobiecki/.emacs.d/org-files/priv.org" "/home/jsobiecki/.emacs.d/org-files/ratioweb-cal.org")))
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
