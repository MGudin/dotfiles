;; this file uses use the macro use-package
;; as is a pain in the ass to manually install
;; all packages. Semantic is a plus
;; Credits: https://github.com/jwiegley/use-package

;; yasnippets
;; credits: https://github.com/joaotavora/yasnippet
(use-package yasnippet
  :ensure t
  :init
  (yas-global-mode 1)
  )


;; zen mode (css-like selector expansor)
;; credits: https://github.com/rooney/zencoding
(use-package zencoding-mode
  :ensure t
  :init
  (add-hook 'sgml-mode-hook 'zencoding-mode) ;; Auto-start on any markup modes
  :pin melpa
  )

;; Neo tree
;; credits: https://github.com/jaypei/emacs-neotree
(use-package neotree
  :ensure t
  :pin melpa
  :bind (("<f8>" . neotree-toggle))
  )

;; editorconfig for emacs
;; credits:https://github.com/editorconfig/editorconfig-emacs
(use-package editorconfig
  :ensure t
  :config
  (editorconfig-mode 1))


(provide 'plugins)
