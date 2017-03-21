;; adds repositories for lisp packages
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
    (package-initialize))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(global-linum-mode t)
 '(js-indent-level 2)
 '(linum-format "%3d ▍")
 '(markdown-command "pandoc")
 '(markdown-css-paths (quote ("/home/chudix/.emacs.d/github-md.css")))
 '(next-line-add-newlines nil)
 '(reb-re-syntax (quote string))
 '(size-indication-mode t)
 '(tab-width 2)
 '(temporary-file-directory "~/.emacs.d/auto-save-list"))

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


;;  Highlight working line
(global-hl-line-mode 1)
(set-face-background 'hl-line "grey11")
(column-number-mode 1)

;; indent with spaces
(setq-default indent-tabs-mode nil)

;; Display line & columns
(line-number-mode 1)
(column-number-mode 1)
(display-multi-font-p)

;; enable x11 clipboard yank
(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

;; stay update you!! ucking buffers..
(global-auto-revert-mode t)

;; Markdown
(setq markdown-css-path "~/.emacs.d/github-md.css")

;; TAGS 
(setq path-to-ctags "~/.emacs.d/TAGS")

(defun create-tags (dir-name)
  "Create tags file."
(interactive "DDirectory: ")
  (shell-command
   (format "ctags -f %s -e  -R %s" path-to-ctags (directory-file-name dir-name)))
    )

;; Plugins
;; tabkey2 (not working)
(add-to-list 'load-path "~/.emacs.d/plugins/")
(require 'tabkey2)


;; ;; Django mode ;)
;; (add-to-list 'load-path "~/.emacs.d/plugins/python-django.el/")
;; (require 'python-django)


;; yasnippets

(add-to-list 'load-path
"~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)


;; zen mode (emmet)

(add-to-list 'load-path
             "~/.emacs.d/plugins/zencoding")

(require 'zencoding-mode)
;; activate zenmode on markup modes.
(add-hook 'sgml-mode-hook 'zencoding-mode)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

;; Neo tree

(add-to-list 'load-path "~/.emacs.d/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)


;; Tab Bar Mode (displays tabs at the top)
;; (add-to-list 'load-path "~/.emacs.d/tabbar")
;; (require 'tabbar)
;; TODO: customize appeareance

;; Switch between buffers with arrow keys
(windmove-default-keybindings)
