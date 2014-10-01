(require-package 'helm)

(require 'helm-config)
(helm-mode 1)

(require-package 'helm-spotify)

;; use helm-occur
(global-set-key (kbd "C-o") 'helm-occur)
;; use helm-semantic-or-imenu
(global-set-key (kbd "C-f") 'helm-semantic-or-imenu)


(provide 'init-helm)
