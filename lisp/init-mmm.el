;;; init-mmm.el ---                                  -*- lexical-binding: t; -*-

;; Copyright (C) 2016  Jarek Sobiecki

;; Author: Jarek Sobiecki <jsobiecki@docent>
;; Keywords: abbrev, 

;;----------------------------------------------------------------------------
;; Multiple major modes
;;----------------------------------------------------------------------------
(require-package 'mmm-mode)
(require 'mmm-auto)
(setq mmm-global-mode 'maybe)
(setq mmm-submode-decoration-level 2)


(provide 'init-mmm)
