(require-package 'org)
(require-package 'org-caldav)

(add-hook 'org-mode-hook 'flyspell-mode)
(setq org-agenda-files '("~/.emacs.d/org-files"))

(provide 'init-org-mode)
