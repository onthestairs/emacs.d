(require-package 'projectile)

(require-package 'helm-projectile)
;; Bind ctrl + p to switch project
(global-set-key (kbd "C-p") 'helm-projectile)

(projectile-global-mode)

(provide 'init-projectile)
