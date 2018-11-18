(use-package org
  :ensure t
  :config
  (progn
   (require 'org-protocol)
   (server-start)
   (add-hook 'org-mode-hook 'flyspell-mode)
   (setq org-agenda-files '("~/.emacs.d/org-files"))
     
   (define-key global-map "\C-cc" 'org-capture)
   (setq org-capture-templates
         `(("t" "Todo (priv)" entry (file "~/.emacs.d/org-files/priv.org")  
            "** TODO %?\n %i\n %a")
           ("w" "Todo (work)" entry (file "~/.emacs.d/org-files/business.org")
            "** TODO %?\n %i\n %a")
           ("e" "Time logging" table-line (file "~/.emacs.d/org-files/time.org")
            "| %^t | ffw | hours |")
           ("j" "Journal" entry (file+datetree "~/.emacs.d/org-files/journal/journal.org")
            "* %?\nEntered on %U\n  %i\n  %a")
           ))
   )
  )

;(use-package ob-php
;  :ensure t
;  )

(use-package org-bullets
  :ensure t
  :init
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
  )

(use-package org-cliplink
  :ensure t
  )

(use-package org-journal
  :ensure t
  :config

  (progn
    (setq org-journal-enable-agenda-integration t)
    (setq org-journal-dir "~/.emacs.d/org-files/journal/")
    )
  )

(use-package ox-reveal
  :ensure t
  )

(use-package org-alert
  :ensure t
  :init
  (setq alert-default-style 'libnotify)
  )

(use-package org-brain :ensure t
  :init
  (setq org-brain-path "~/.emacs.d/org-files/brain")
  ;; For Evil users
  (with-eval-after-load 'evil
    (evil-set-initial-state 'org-brain-visualize-mode 'emacs))
  :config
  (setq org-id-track-globally t)
  (setq org-id-locations-file "~/.emacs.d/.org-id-locations")
  (push '("b" "Brain" plain (function org-brain-goto-end)
          "* %i%?" :empty-lines 1)
        org-capture-templates)
  (setq org-brain-file-entries-use-title nil) 
  (setq org-brain-visualize-default-choices 'all)
  (setq org-brain-title-max-length 25))



 (provide 'init-org-mode)
