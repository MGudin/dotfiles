;; dont show menu bar, since ill use it in terminal
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; add line numbers kinda pretty
(global-linum-mode 1)
(setq linum-format "%3d ▍")

;; mode line
(size-indication-mode t)
(column-number-mode 1)

;; Faces
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "color-236" :foreground "unspecified-fg" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight semi-bold :height 1 :width normal :foundry "default" :family "default"))))
 '(linum ((t (:inherit (## default)))))
 '(mode-line-buffer-id ((t (:weight bold))))
 '(mode-line-inactive ((t (:inherit mode-line :background "color-240" :foreground "color-233" :box (:line-width -1 :color "grey75") :weight light))))
 '(region ((t (:background "color-52"))))
 )
;;  Highlight working line
(global-hl-line-mode 1)
(set-face-background 'hl-line "grey11")

(provide 'appearance)
