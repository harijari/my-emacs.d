;(add-to-list 'load-path (expand-file-name "evil" user-emacs-directory))
;(require 'evil)
;(evil-mode 1)
(require-package 'evil)

(require-package 'evil-visualstar)
(require-package 'evil-jumper)
(require-package 'evil-easymotion)
(require-package 'evil-leader)

(evil-mode 1)

(provide 'init-evil)
