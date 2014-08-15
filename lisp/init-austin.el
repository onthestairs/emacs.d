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

(setq explicit-shell-file-name "/bin/bash")

;; Theme
(require-package 'cyberpunk-theme)
(add-hook 'after-init-hook
      (lambda () (load-theme 'cyberpunk t)))
(load-theme 'cyberpunk)

;; Font size
(set-face-attribute 'default nil :height 120)

;; Get rid of menu bar
(menu-bar-mode -1)

;; 80 width
(setq-default fill-column 79)
;; Add Autofill mode to mode hooks.
(add-hook 'python-mode-hook 'turn-on-auto-fill)

;; wild attempt to get python working through vagrant
 (setq python-shell-interpreter "/python/distilledstore/sshp")

(provide 'init-austin)
