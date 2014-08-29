;; (require-package 'tidy)
;; (add-hook 'html-mode-hook (lambda () (tidy-build-menu html-mode-map)))

;; (require-package 'tagedit)
;; (after-load 'sgml-mode
;;   (tagedit-add-paredit-like-keybindings)
;;   (add-hook 'sgml-mode-hook (lambda () (tagedit-mode 1))))

;; (add-auto-mode 'html-mode "\\.(jsp|tmpl)\\'")

;; ;; Note: ERB is configured in init-ruby-mode

(require-package 'web-mode)

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(setq web-mode-engines-alist
          '(("django" . "/labsmanager/.*\\.html\\'")
            ("django" . "/distilledstore/.*\\.html\\'"))
          )

(setq web-mode-extra-snippets
      '(
        ("django" . (("include" . ("{% include \""  . "\" %}"))))
       ))


(provide 'init-html)
