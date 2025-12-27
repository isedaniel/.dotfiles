
;; set UI elements
(setq ring-bell-function 'ignore)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(global-display-line-numbers-mode 1)
(global-hl-line-mode)
(recentf-mode 1)
(save-place-mode 1)
(global-auto-revert-mode 1) ;; auto refresh changed files

;; set history
(setq history-length 25)
(savehist-mode 1)

;; config backup files
(setq backup-directory-alist '(("." . "~/.emacs.d/backups/"))
      backup-by-copying t
      version-control t
      delete-old-versions t
      kept-new-versions 20
      kept-old-versions 5)

;; set theme
(load-theme 'modus-vivendi t)
(set-face-attribute 'default nil :font "DejaVu Sans Mono" :height 120)

;; set package
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/"))

(package-initialize)
(unless package-archive-contents
 (package-refresh-contents))

;; change custom file
(setq custom-file (locate-user-emacs-file "custom-vars.el"))
(load custom-file 'noerror 'nomessage)

;; set evil-mode
(unless (package-installed-p 'evil)
  (package-install 'evil))

(require 'evil)
(evil-mode 1)

