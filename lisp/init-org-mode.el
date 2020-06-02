(use-package org
  :ensure t
  :config
  (progn
   (require 'org-protocol)
   (server-start)
   (add-hook 'org-mode-hook 'flyspell-mode)
   (setq org-agenda-custom-commands 
      '(("c" "Make a call" tags-todo "@call"
         ((org-agenda-overriding-header "Call list")))
        ("E" "Make a email" tags-todo "@email"
         ((org-agenda-overriding-header "Email list")))
        ("S" "Sale" tags-todo "sale"
         ((org-agenda-overriding-header "Sales list")))
        ))

   (setq org-agenda-files '("~/.emacs.d/org-files/gtd/inbox.org"
                         "~/.emacs.d/org-files/gtd/gtd.org"
                         "~/.emacs.d/org-files/gtd/tickler.org"))
   (setq org-todo-keywords '((sequence "TODO(t)" "WAITING(w)" "|" "DONE(d)" "CANCELLED(c)")))
   (setq org-refile-targets '(("~/.emacs.d/org-files/gtd/gtd.org" :maxlevel . 3)
                           ("~/.emacs.d/org-files/gtd/someday.org" :level . 1)
                           ("~/.emacs.d/org-files/gtd/tickler.org" :maxlevel . 2)))
   (setq org-outline-path-complete-in-steps nil)         ; Refile in a single go
   (setq org-refile-use-outline-path t)                  ; Show full paths for refiling
   (define-key global-map "\C-cc" 'org-capture)
   (setq org-capture-templates
         `(("t" "Todo [inbox]" entry (file+headline "~/.emacs.d/org-files/gtd/inbox.org" "Tasks")  
            "* TODO %i%?")
           ("T" "Tickler" entry (file+headline "~/.emacs.d/org-files/gtd/tickler.org" "Tickler")  
            "* %i%? \n %U")
           ("w" "Todo (work)" entry (file "~/.emacs.d/org-files/gtd/business.org")
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
