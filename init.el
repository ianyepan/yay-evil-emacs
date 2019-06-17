;;; init.el --- Emacs init file
;;  Author: Ian Y.E. Pan
;;; Commentary:
;;; A personalized configuration file tailored to suit my needs
;;; Code:

(require 'package) ;; load package manager
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/"))
(setq package-selected-packages '(dashboard yasnippet yasnippet-snippets which-key ranger company evil magit smooth-scrolling rainbow-mode org-bullets ido-vertical-mode highlight-operators highlight-numbers highlight-escape-sequences flycheck auto-indent-mode))
(package-initialize) ;; load and activate packages
(setq package-enable-at-startup nil)
(unless package-archive-contents
  (package-refresh-contents))
(package-install-selected-packages)

;; Load theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'wilmersdorf t)

;; Load main config file "./config.org"
(require 'org)
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

;; Dump custom-set-variables to a garbage file and don't load it
(setq custom-file "~/.emacs.d/package-selected-packages.el")

(provide 'init)
;;; init.el ends here
