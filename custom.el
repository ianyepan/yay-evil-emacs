;;; custom.el --- Emacs Configuration through Custom
;;; Commentary:
;;; Code:
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(yasnippet-snippets yasnippet-classic-snippets writeroom-mode whitespace-cleanup-mode which-key vimrc-mode switch-window spacemacs-theme smooth-scrolling smex rainbow-mode rainbow-delimiters prettier-js org-bullets nlinum-relative neotree multiple-cursors minions markdown-mode lorem-ipsum js2-mode jedi java-snippets ido-vertical-mode highlight-operators highlight-numbers highlight-escape-sequences flycheck flx-ido expand-region evil-surround evil-smartparens evil-org evil-magit evil-commentary eshell-git-prompt esh-autosuggest emmet-mode elpy edit-server dockerfile-mode dired-sidebar dashboard company-jedi column-enforce-mode beacon base16-theme avy auto-indent-mode all-the-icons)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 144 :width normal :foundry "nil" :family "Monaco"))))
 '(avy-lead-face ((t (:foreground "#FF4E4e"))))
 '(avy-lead-face-0 ((t (:foreground "DarkGoldenrod2"))))
 '(column-enforce-face ((t (:foreground "#ff4e4e" :underline t))))
 '(eshell-git-prompt-powerline-clean-face ((t (:background "MediumSeaGreen" :foreground "#000000"))))
 '(eshell-git-prompt-powerline-dir-face ((t (:background "#839DB2" :foreground "#000000"))))
 '(eshell-git-prompt-powerline-not-clean-face ((t (:background "DarkGoldenrod2" :foreground "#000000"))))
 '(fringe ((t (:background nil))))
 '(linum ((t (:background nil :foreground "#888888"))))
 '(mc/cursor-face ((t (:background "#888888" :foreground "black"))))
 '(mode-line ((t (:background "#EDE8D5" :foreground "#839496" :box (:line-width 2 :color "#777" :style released-button)))))
 '(neo-dir-link-face ((t (:height 140 :family "San Francisco"))))
 '(neo-file-link-face ((t (:height 140 :family "San Francisco"))))
 '(nlinum-relative-current-face ((t (:inherit linum :background "#FCF6E3" :foreground "#000000" :weight normal))))
 '(org-block ((t (:background "#002b36" :foreground "#839DB2"))))
 '(org-document-title ((t (:height 2.0 :family "Georgia"))))
 '(org-level-1 ((t (:inherit outline-1 :weight bold :height 1.3))))
 '(org-level-2 ((t (:inherit outline-2 :weight bold :height 1.1))))
 '(org-level-3 ((t (:inherit outline-3 :weight bold :height 1.1))))
 '(variable-pitch ((t (:height 1.3 :family "CMU Serif")))))
