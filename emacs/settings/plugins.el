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
  :init
  (setq neo-theme 'icons)
  )

(use-package all-the-icons
  :ensure t
  )

;;
;; editorconfig for emacs
;; credits:https://github.com/editorconfig/editorconfig-emacs
(use-package editorconfig
  :ensure t
  :config
  (editorconfig-mode 1))

;; markdown mode
;; credits: http://jblevins.org/projects/markdown-mode/
(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown")
  )

;; Ivy and friends awesome framework to work with
;; credits: https://github.com/abo-abo/swiper
(use-package ivy
  :ensure t
  :pin melpa
  :init
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")
  )

(use-package swiper
  :ensure t
  :pin melpa
  )

(use-package counsel
  :ensure t
  :pin melpa
  :init
  (counsel-mode 1)
  )


;; Sintax higlights for less files editing.
;; Credits: https://github.com/purcell/less-css-mode/
(use-package less-css-mode
  :ensure t
  )

(provide 'plugins)
