(use-package org
  :ensure t
  :config
  (progn
   (require 'org-protocol)
   (server-start)
     
   (add-hook 'org-mode-hook 'flyspell-mode)
   (setq org-agenda-files '("~/.emacs.d/org-files"))
   (setq org-journal-dir "~/.emacs.d/org-files/journal/")
     
   (define-key global-map "\C-cc" 'org-capture)
   (setq org-capture-templates
         `(("t" "Todo (priv)" entry (file "~/.emacs.d/org-files/priv.org")  
            "** TODO %?\n %i\n %a")
           ("b" "Todo (work)" entry (file "~/.emacs.d/org-files/business.org")
            "** TODO %?\n %i\n %a")
           ("e" "Time logging" table-line (file "~/.emacs.d/org-files/time.org")
            "| %^t | ffw | hours |")
           ("j" "Journal" entry (file+datetree "~/.emacs.d/org-files/journal/journal.org")
            "* %?\nEntered on %U\n  %i\n  %a")
           ))
   )
  )

(use-package ob-php
  :ensure t
  )

(use-package org-bullets
  :ensure t
  :init
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
  )

(use-package org-journal
  :ensure t
  )

(use-package ox-reveal
  :ensure t
  )




 (provide 'init-org-mode)
