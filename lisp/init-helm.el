(require-package 'helm)

(require 'helm-config)
(helm-mode 1)

(require-package 'helm-spotify)

(global-set-key (kbd "C-o") 'helm-occur)

(provide 'init-helm)
