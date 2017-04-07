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

