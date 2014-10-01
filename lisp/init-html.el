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
(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))

;; as per http://truongtx.me/2014/03/10/emacs-setup-jsx-mode-and-jsx-syntax-checking/
(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
      (let ((web-mode-enable-part-face nil))
        ad-do-it)
    ad-do-it))

(setq web-mode-engines-alist
          '(("django" . "/labsmanager/.*\\.html\\'")
            ("django" . "/distilledstore/.*\\.html\\'"))
          )



(setq web-mode-extra-snippets
      '(
        ("django" . (("include" . ("{% include \""  . "\" %}"))))
       ))

;; disable autopair
(add-hook 'web-mode-hook
           #'(lambda ()
               (autopair-mode -1))             ;; for emacsen >= 24
)
(setq web-mode-enable-auto-pairing t)

(provide 'init-html)
