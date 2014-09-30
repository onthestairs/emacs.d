;; newline-withoug-break-of-line
(defun newline-without-break-of-line ()
  "1. remove to end of the line.
   2. insert newline with index"

  (interactive)
  (let ((oldpos (point)))
    (end-of-line)
    (newline-and-indent)))

(global-set-key (kbd "<C-return>") 'newline-without-break-of-line)

;; Set imenu to ctrl-i
;; (global-set-key (kbd "<M-i-i>") 'imenu)

;; (setq explicit-shell-file-name "/bin/bash")
(setq shell-file-name "/bin/bash")

;; Theme
;; (require-package 'cyberpunk-theme)
;; (load-theme 'sanityinc-tomorrow-blue)
;; (color-theme-sanityinc-tomorrow-blue)
;; (load-theme 'sanityinc-tomorrow-blue t)

;; Font size
(set-face-attribute 'default nil :height 120)

;; Get rid of menu bar
(menu-bar-mode -1)

;; 80 width
(setq-default fill-column 79)
;; Add Autofill mode to mode hooks.
(add-hook 'python-mode-hook 'turn-on-auto-fill)

;; Remove trailing whitespace before save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Allow horizontal scrolling with the mouse pads
(global-set-key (kbd "<mouse-6>") 'ignore)
(global-set-key (kbd "<mouse-7>") 'ignore)
(global-set-key (kbd "<double-mouse-6>") 'ignore)
(global-set-key (kbd "<double-mouse-7>") 'ignore)
(global-set-key (kbd "<triple-mouse-6>") 'ignore)
(global-set-key (kbd "<triple-mouse-7>") 'ignore)

(provide 'init-austin)
