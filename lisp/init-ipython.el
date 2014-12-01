(require-package 'ein)

(setq ein:use-auto-complete t)

(require-package 'deferred)
(require-package 'jedi)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

(provide 'init-ipython)
