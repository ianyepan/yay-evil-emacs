;;; custom.el --- Emacs Configuration through Custom
;;; Commentary:
;;; Code:
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(all-the-icons-scale-factor 1.0)
 '(beacon-blink-delay 0.1)
 '(beacon-blink-duration 0.4)
 '(beacon-blink-when-focused t)
 '(beacon-blink-when-window-scrolls nil)
 '(beacon-color "#E75C31")
 '(beacon-mode t)
 '(beacon-push-mark nil)
 '(beacon-size 25)
 '(blink-cursor-mode nil)
 '(column-enforce-column 79)
 '(company-cmake-executable nil)
 '(company-global-modes '(not eshell-mode))
 '(company-idle-delay t)
 '(css-fontify-colors nil)
 '(css-indent-offset 2)
 '(cursor-type 'box)
 '(dired-sidebar-width 35)
 '(dired-use-ls-dired nil)
 '(display-time-24hr-format t)
 '(display-time-day-and-date t)
 '(display-time-interval 1)
 '(display-time-mode t)
 '(flx-ido-mode t)
 '(fringe-mode '(nil . 1) nil (fringe))
 '(global-company-mode t)
 '(global-visual-line-mode t)
 '(ido-enable-flex-matching t)
 '(ido-everywhere t)
 '(ido-mode 'both nil (ido))
 '(ido-vertical-define-keys 'C-n-and-C-p-only)
 '(ido-vertical-mode t)
 '(isearch-lazy-highlight t)
 '(jdee-compiler '("javac"))
 '(jdee-server-dir "~/myJars")
 '(js-indent-level 2 t)
 '(js2-strict-missing-semi-warning nil)
 '(lazy-highlight-initial-delay 0)
 '(mc/always-repeat-command t)
 '(mc/always-run-for-all t)
 '(neo-autorefresh t)
 '(neo-window-position 'right)
 '(neo-window-width 30)
 '(olivetti-body-width 80)
 '(org-agenda-files
   '("~/todo.org" "~/Notes-in-Org-LaTeX/GNU-Emacs/gnu-emacs.org" "~/Notes-in-Org-LaTeX/Docker/docker.org"))
 '(org-format-latex-options
   '(:foreground default :background default :scale 2.0 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
                 ("begin" "$1" "$" "$$" "\\(" "\\[")))
 '(org-highlight-latex-and-related '(latex))
 '(org-latex-classes
   '(("article" "\\documentclass[12pt, a4paper]{article}"
      ("\\section{%s}" . "\\section*{%s}")
      ("\\subsection{%s}" . "\\subsection*{%s}")
      ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
      ("\\paragraph{%s}" . "\\paragraph*{%s}")
      ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))))
 '(org-latex-listings 'minted)
 '(org-latex-pdf-process
   '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))
 '(org-todo-keywords '((sequence "TODO" "DOING" "DONE")))
 '(package-selected-packages
   '(hungry-delete smartparens undo-tree magit solarized-theme yasnippet-snippets yasnippet-classic-snippets writeroom-mode whitespace-cleanup-mode which-key vimrc-mode switch-window spacemacs-theme smooth-scrolling smex rainbow-mode rainbow-delimiters prettier-js org-bullets nlinum-relative neotree multiple-cursors minions markdown-mode lorem-ipsum js2-mode jedi java-snippets ido-vertical-mode highlight-operators highlight-numbers highlight-escape-sequences flycheck flx-ido expand-region eshell-git-prompt esh-autosuggest emmet-mode elpy edit-server dockerfile-mode dired-sidebar dashboard company-jedi column-enforce-mode beacon base16-theme avy auto-indent-mode all-the-icons))
 '(python-indent-guess-indent-offset nil)
 '(shr-max-image-proportion 0.5)
 '(writeroom-global-effects
   '(writeroom-set-alpha writeroom-set-menu-bar-lines writeroom-set-tool-bar-lines writeroom-set-bottom-divider-width))
 '(writeroom-mode-line t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 144 :width normal :foundry "nil" :family "Monaco"))))
 '(avy-lead-face ((t (:foreground "#FF4E4e"))))
 '(avy-lead-face-0 ((t (:foreground "DarkGoldenrod2"))))
 '(column-enforce-face ((t (:foreground "#ff4e4e" :underline t))))
 '(company-preview-common ((t (:inherit region))))
 '(company-tooltip-selection ((t (:inherit font-lock-function-name-face :background "#D7CDAE"))))
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
 '(org-block ((t (:background "#002b36" :foreground "#B4B9BD"))))
 '(org-document-title ((t (:height 2.0 :family "Georgia"))))
 '(org-level-1 ((t (:inherit outline-1 :weight bold :height 1.3))))
 '(org-level-2 ((t (:inherit outline-2 :weight bold :height 1.1))))
 '(org-level-3 ((t (:inherit outline-3 :weight bold :height 1.1))))
 '(region ((t (:background "#D7CDAE"))))
 '(show-paren-match ((t (:background "DarkGoldenrod2" :foreground "#000000"))))
 '(variable-pitch ((t (:height 1.3 :family "CMU Serif")))))

(provide 'custom)
;;; custome.el ends here
