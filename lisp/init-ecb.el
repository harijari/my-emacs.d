(require-package 'ecb)


;; Disable the Tip of the Day popup.
(setq ecb-tip-of-the-day nil)
(setq ecb-tree-make-parent-node-sticky nil)

;; Show files in the directory tree buffer.
;;(setq ecb-show-sources-in-directories-buffer 'always)

(customize-set-variable
 'ecb-compile-window-width
 'frame
 "Configure ECB to split the frame, instead of the edit window,to make real estate when displaying the compilation window.")

(customize-set-variable
 'ecb-layout-name
 "left9"
 "Sidebar with full ECB methods buffer on the left hand side of the screen")

(customize-set-variable
 'ecb-toggle-layout-sequence
 (list "left13" "left9")
 "Create a sequence of 3 ECB layouts. The default layout is
doesn't have to be one from the sequence.")






(provide 'init-ecb)
