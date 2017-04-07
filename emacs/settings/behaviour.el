;; No splash screen... thanks!
(setq inhibit-startup-message t)

;; (js-indent-level 2)

(setq tab-width 2)

;; indent with spaces
(setq-default indent-tabs-mode nil)

;; stay update you!! ucking buffers..
(global-auto-revert-mode t)

;; TODO: TAGS 
;; (setq path-to-ctags "~/.emacs.d/TAGS")

;; (defun create-tags (dir-name)
;;   "Create tags file."
;; (interactive "DDirectory: ")
;;   (shell-command
;;    (format "ctags -f %s -e  -R %s" path-to-ctags (directory-file-name dir-name)))
;;     )


(provide 'behaviour)

