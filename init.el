;;; init.el --- Emacs init file
;;  Author: Ian Y.E. Pan
;;; Commentary:
;;; A personalized configuration file tailored to suit my needs
;;; Code:
(require 'package)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(setq package-selected-packages '(nord-theme evil spacemacs-theme magit whitespace-cleanup-mode smooth-scrolling smex rainbow-mode org-bullets minions ido-vertical-mode highlight-operators highlight-numbers highlight-escape-sequences flycheck auto-indent-mode))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))
(package-install-selected-packages)
(setq package-enable-at-startup nil)
(package-initialize)

(load-theme 'nord t)

;; Tron Legacy Theme
;; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;; (load-theme 'tronlegacy t)

;; Load actual config file './config.org'
(require 'org)
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

;; Load custom set faces and variables
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(provide 'init)
;;; init.el ends here
