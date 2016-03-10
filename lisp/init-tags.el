

(unless (package-installed-p 'evil )
  (package-refresh-contents)
  (package-install 'evil )
  )


(provide 'init-tags)

