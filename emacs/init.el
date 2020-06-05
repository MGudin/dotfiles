;;_/_/_/_/_/_/_/_/  SET UP SOME PACKAGE MANAGEMENT _/_/_/_/_/_/_/_/_/_/_/

;; adds repositories for lisp packages
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa-stable" . "https://stable.melpa.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))

;; Warning: package.el is native since version 24.
;; (update you!! -.-) if not.
(require 'package)
(package-initialize)

;;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;;_/_/_/_/_/_/_/_/_/     LOAD CONFIGS       _/_/_/_/_/_/_/_/_/_/_/_/_/_/

;; add settings directory to path
(setq settings-dir (expand-file-name "settings" user-emacs-directory))
(add-to-list 'load-path settings-dir)

;; keep track of temporary files 
(setq temporary-file-directory (expand-file-name "auto-save-list" user-emacs-directory))

;; Related to how emacs works(indentation... etc)
(require 'behaviour)

;; Related to how emacs is visually diplayed
(require 'appearance)

;;_/_/_/_/_/_/_/_/_/ PLUGINS _/_/_/_/_/_/_/_/_/_/_/_/_/
;; Now lets check if use-package its installed. if not install it.
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package)
  )

;; now add plugins :)
(require 'plugins)

(require 'lsp-mode)
;;_/_/_/_/_/_/_/_/ custom keybindings _/_/_/_/_/_/_/_/
(require 'keybindings)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (lsp-mode indium vue-mode markdown-toc dockerfile-mode yaml-mode dash rjsx-mode counsel swiper ivy markdown-mode editorconfig all-the-icons neotree zencoding-mode yasnippet use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "color-236" :foreground "unspecified-fg" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight semi-bold :height 1 :width normal :foundry "default" :family "default"))))
 '(linum ((t (:inherit (## default)))))
 '(mode-line-buffer-id ((t (:weight bold))))
 '(mode-line-inactive ((t (:inherit mode-line :background "color-240" :foreground "color-233" :box (:line-width -1 :color "grey75") :weight light))))
 '(region ((t (:background "color-52")))))
