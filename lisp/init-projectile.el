(require-package 'projectile)

(require-package 'helm-projectile)

(projectile-global-mode)

(global-set-key (kbd "C-p") 'helm-projectile)

(provide 'init-projectile)
