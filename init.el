;;; init.el --- Emacs init file
;;  Author: Ian Y.E. Pan
;;; Commentary:
;;; A personalized configuration file tailored to suit my needs
;;; Code:

(setq gc-cons-threshold 402653184
      gc-cons-percentage 0.6)
(defvar ian--file-name-handler-alist file-name-handler-alist)
(setq file-name-handler-alist nil)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/"))
(setq package-selected-packages '(dashboard yasnippet yasnippet-snippets which-key ranger company evil magit smooth-scrolling rainbow-mode org-bullets ido-vertical-mode highlight-operators highlight-numbers highlight-escape-sequences flycheck auto-indent-mode))
(package-initialize)
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

(setq gc-cons-threshold 16777216
      gc-cons-percentage 0.1)
(setq file-name-handler-alist ian--file-name-handler-alist)

(provide 'init)
;;; init.el ends here
