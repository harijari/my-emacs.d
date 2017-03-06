
(use-package org
  :ensure t
  :init
  (org-babel-do-load-languages
   'org-babel-load-languages
   '(
     (sh . t)
     (python . t)
     (R . t)
     (ruby . t)
     (ditaa . t)
     (dot . t)
     (octave . t)
     (sqlite . t)
     (perl . t)
     ))
  
  )

(use-package org-bullets
  :ensure t
  :init
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
)

(require 'org-protocol)
(server-start)

(add-hook 'org-mode-hook 'flyspell-mode)
(setq org-agenda-files '("~/.emacs.d/org-files"))

(define-key global-map "\C-cc" 'org-capture)
(setq org-capture-templates
      `(("t" "Todo (priv)" entry (file "~/.emacs.d/org-files/priv.org")  
         "** TODO %?\n %i\n %a")
        ("b" "Todo (work)" entry (file "~/.emacs.d/org-files/business.org")
         "** TODO %?\n %i\n %a")
        ("e" "Time logging" table-line (file "~/.emacs.d/org-files/time.org")
         "| %^t | ffw | hours |")
        ("j" "Journal" entry (file+datetree "~/.emacs.d/org-files/journal.org")
         "* %?\nEntered on %U\n  %i\n  %a")
      ))



 (provide 'init-org-mode)
