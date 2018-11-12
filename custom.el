;;; custom.el --- Emacs Configuration through Custom
;;; Commentary:
;;; Code:
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(all-the-icons-scale-factor 1.0)
 '(avy-background t)
 '(blink-cursor-blinks 20)
 '(cdlatex-auto-help-delay 0.7)
 '(column-enforce-column 79)
 '(company-cmake-executable nil)
 '(company-dabbrev-minimum-length 2)
 '(company-global-modes '(not eshell-mode))
 '(company-idle-delay t)
 '(company-minimum-prefix-length 2)
 '(compilation-message-face 'default)
 '(css-fontify-colors nil)
 '(cursor-type 'box)
 '(custom-safe-themes
   '("6daa09c8c2c68de3ff1b83694115231faa7e650fdbb668bc76275f0f2ce2a437" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "c9f102cf31165896631747fd20a0ca0b9c64ecae019ce5c2786713a5b7d6315e" "1263771faf6967879c3ab8b577c6c31020222ac6d3bac31f331a74275385a452" "fede08d0f23fc0612a8354e0cf800c9ecae47ec8f32c5f29da841fe090dfc450" "100eeb65d336e3d8f419c0f09170f9fd30f688849c5e60a801a1e6addd8216cb" "99c86852decaeb0c6f51ce8bd46e4906a4f28ab4c5b201bdc3fdf85b24f88518" default))
 '(default-input-method "chinese-zozy")
 '(dired-sidebar-width 35)
 '(dired-use-ls-dired nil)
 '(display-time-24hr-format t)
 '(display-time-interval 1)
 '(display-time-mode t)
 '(expand-region-preferred-python-mode 'fgallina-python)
 '(flx-ido-mode t)
 '(fringe-mode '(nil . 1) nil (fringe))
 '(ido-enable-flex-matching t)
 '(ido-everywhere t)
 '(ido-mode 'both nil (ido))
 '(ido-vertical-define-keys 'C-n-and-C-p-only)
 '(ido-vertical-mode t)
 '(isearch-lazy-highlight t)
 '(lazy-highlight-initial-delay 0)
 '(mc/always-repeat-command t)
 '(mc/always-run-for-all t)
 '(neo-window-position 'right)
 '(neo-window-width 35)
 '(nlinum-relative-redisplay-delay 0)
 '(org-agenda-files '("~/todo.org" "~/Notes-in-Org-LaTeX/Docker/docker.org"))
 '(org-ellipsis "⤵")
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
   '(sml-modeline htmlize drag-stuff cdlatex hungry-delete smartparens undo-tree magit solarized-theme yasnippet-snippets yasnippet-classic-snippets writeroom-mode whitespace-cleanup-mode which-key vimrc-mode switch-window spacemacs-theme smooth-scrolling smex rainbow-mode rainbow-delimiters prettier-js org-bullets nlinum-relative neotree multiple-cursors minions markdown-mode lorem-ipsum jedi java-snippets ido-vertical-mode highlight-operators highlight-numbers highlight-escape-sequences flycheck flx-ido expand-region eshell-git-prompt esh-autosuggest emmet-mode elpy edit-server dockerfile-mode dired-sidebar company-jedi column-enforce-mode base16-theme avy auto-indent-mode all-the-icons))
 '(python-indent-guess-indent-offset nil)
 '(shr-max-image-proportion 0.5)
 '(sp-escape-quotes-after-insert nil)
 '(which-key-echo-keystrokes 0.25)
 '(which-key-idle-delay 0.5)
 '(writeroom-global-effects
   '(writeroom-set-alpha writeroom-set-menu-bar-lines writeroom-set-tool-bar-lines writeroom-set-bottom-divider-width))
 '(writeroom-mode-line t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 144 :width normal :foundry "nil" :family "Monaco"))))
 '(avy-background-face ((t (:foreground "#999999"))))
 '(avy-lead-face ((t (:foreground "#000000" :weight bold))))
 '(avy-lead-face-0 ((t (:foreground "#d21500" :weight bold))))
 '(column-enforce-face ((t (:foreground "#ff4e4e" :underline t))))
 '(company-preview-common ((t (:inherit region))))
 '(company-tooltip-selection ((t (:inherit font-lock-function-name-face :background "#D7CDAE"))))
 '(eshell-git-prompt-powerline-clean-face ((t (:background "MediumSeaGreen" :foreground "#000000"))))
 '(eshell-git-prompt-powerline-dir-face ((t (:background "#839DB2" :foreground "#000000"))))
 '(eshell-git-prompt-powerline-not-clean-face ((t (:background "DarkGoldenrod2" :foreground "#000000"))))
 '(font-lock-comment-face ((t (:foreground "Firebrick" :slant italic))))
 '(fringe ((t (:inherit linum))))
 '(highlight ((t (:background "#eeeeee"))))
 '(linum ((t (:inherit (shadow default) :background "#eeeeee"))))
 '(mc/cursor-face ((t (:background "#888888" :foreground "black"))))
 '(neo-dir-link-face ((t (:height 140 :family "San Francisco"))))
 '(neo-file-link-face ((t (:height 140 :family "San Francisco"))))
 '(nlinum-relative-current-face ((t (:inherit linum :foreground "Black"))))
 '(org-agenda-date ((t (:background "#eeeeee" :foreground "#1662AF" :weight bold :overline t :height 1.1))))
 '(org-agenda-date-today ((t (:background "#FFF587" :foreground "#1662af" :overline t :weight bold :height 1.5))))
 '(org-agenda-date-weekend ((t (:inherit org-agenda-date))))
 '(org-block ((t (:background "#f7f7f7" :foreground "#000000"))))
 '(org-document-title ((t (:height 2.0 :family "CMU Serif"))))
 '(org-ellipsis ((t (:foreground "Black"))))
 '(org-meta-line ((t (:background "#e2e2e2" :foreground "#777777"))))
 '(outline-1 ((t (:background "#E4F2FF" :foreground "#0E3A6D" :overline t :weight bold :height 1.3))))
 '(outline-2 ((t (:background "#FFE7E4" :foreground "#801111" :overline t :weight bold :height 1.2))))
 '(outline-3 ((t (:background "#EAE4FF" :foreground "#1C1180" :overline t :weight bold :height 1.1))))
 '(rainbow-delimiters-depth-1-face ((t (:inherit nil :foreground "#777777"))))
 '(rainbow-delimiters-depth-2-face ((t (:inherit nil :foreground "#A0522D"))))
 '(rainbow-delimiters-depth-3-face ((t (:inherit nil :foreground "#238B22"))))
 '(rainbow-delimiters-depth-4-face ((t (:inherit nil :foreground "#D400E7"))))
 '(rainbow-delimiters-depth-5-face ((t (:inherit nil :foreground "#0079E7"))))
 '(rainbow-delimiters-depth-6-face ((t (:inherit nil :foreground "#00AA90"))))
 '(show-paren-match ((t (:background "##9AFF00" :foreground "Black"))))
 '(sml-modeline-end-face ((t (:inherit mode-line))))
 '(sml-modeline-vis-face ((t (:inherit mode-line))))
 '(variable-pitch ((t (:height 1.3 :family "CMU Serif")))))

(provide 'custom)
;;; custom.el ends here
