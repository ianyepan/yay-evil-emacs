;;; custom.el --- Emacs Configuration through Custom
;;; Commentary:
;;; Code:
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(avy-background t)
 '(blink-cursor-blinks 0)
 '(cdlatex-auto-help-delay 0.7)
 '(column-enforce-column 79)
 '(company-cmake-executable nil)
 '(company-dabbrev-minimum-length 2)
 '(company-global-modes '(not eshell-mode))
 '(company-idle-delay t)
 '(company-minimum-prefix-length 2)
 '(compilation-message-face 'default)
 '(css-fontify-colors nil)
 '(cursor-type '(bar . 1))
 '(custom-safe-themes
   '("358008075ebf553cbac291fbc25b555a63ca6ea06951f862db6cb19e8ed299f4" "487063309a67424949cacf52f368199ece937ec2987613869255c4f62eff745d" "100eeb65d336e3d8f419c0f09170f9fd30f688849c5e60a801a1e6addd8216cb" "6daa09c8c2c68de3ff1b83694115231faa7e650fdbb668bc76275f0f2ce2a437" "000db439945835efd0da94580b2b551c6ddd4145556636aace091f512c8e6bbc" "19f3cbf2287806f427d76c551f59a1eb21c5d07432ff0412f8195d37ff83cfef" default))
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
 '(line-spacing 0.15)
 '(mc/always-repeat-command t)
 '(mc/always-run-for-all t)
 '(org-agenda-files '("~/todo.org"))
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
   '(github-modern-theme htmlize drag-stuff cdlatex smartparens undo-tree magit yasnippet-snippets writeroom-mode whitespace-cleanup-mode which-key vimrc-mode smooth-scrolling smex rainbow-mode rainbow-delimiters prettier-js org-bullets nlinum-relative multiple-cursors minions markdown-mode lorem-ipsum jedi ido-vertical-mode highlight-operators highlight-numbers highlight-escape-sequences flycheck flx-ido expand-region eshell-git-prompt esh-autosuggest emmet-mode elpy dockerfile-mode dired-sidebar company-jedi column-enforce-mode avy auto-indent-mode))
 '(pdf-view-midnight-colors '("#6a737d" . "#fffbdd"))
 '(prettier-js-args
   '("--bracket-spacing" "true" "--jsx-bracket-same-line" "true" "--print-width" "80"))
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
 '(column-enforce-face ((t (:foreground "#C50000" :weight bold :underline t))))
 '(eshell-git-prompt-powerline-clean-face ((t (:background "#22863a" :foreground "#ffffff"))))
 '(eshell-git-prompt-powerline-dir-face ((t (:background "#04347E" :foreground "#ffffff"))))
 '(eshell-git-prompt-powerline-not-clean-face ((t (:background "DarkGoldenrod2" :foreground "#000000"))))
 '(org-agenda-date ((t (:background "#eeeeee" :foreground "#1662AF" :weight bold :overline t :height 1.1))))
 '(org-agenda-date-today ((t (:background "#FFF587" :foreground "#1662af" :overline t :weight bold :height 1.5))))
 '(org-agenda-date-weekend ((t (:inherit org-agenda-date))))
 '(org-block ((t (:background "#f7f7f7" :foreground "#000000"))))
 '(org-document-title ((t (:height 2.0 :family "CMU Serif"))))
 '(org-ellipsis ((t (:foreground "Black"))))
 '(org-level-1 ((t (:background "#c5c5c5" :foreground "#000000" :family "Garamond" :overline t :weight bold :height 1.4))))
 '(org-level-2 ((t (:background "#d5d5d5" :foreground "#000000" :family "Garamond" :overline t :weight bold :height 1.3))))
 '(org-level-3 ((t (:background "#eeeeee" :foreground "#000000" :family "Garamond" :overline t :weight bold :height 1.2))))
 '(org-meta-line ((t (:background "#e2e2e2" :foreground "#777777"))))
 '(outline-1 ((t (:background "#e8e8e8" :foreground "#000000" :overline t :weight bold :height 1.2))))
 '(outline-2 ((t (:background "#cccccc" :foreground "#000000" :overline t :weight bold :height 1.1))))
 '(outline-3 ((t (:background "#aaaaaa" :foreground "#000000" :overline t :weight bold :height 1.1))))
 '(rainbow-delimiters-depth-1-face ((t (:inherit nil :foreground "#777777"))))
 '(rainbow-delimiters-depth-2-face ((t (:inherit nil :foreground "#156D00"))))
 '(rainbow-delimiters-depth-3-face ((t (:inherit nil :foreground "#D90078"))))
 '(rainbow-delimiters-depth-4-face ((t (:inherit nil :foreground "#0079E7"))))
 '(rainbow-delimiters-depth-5-face ((t (:inherit nil :foreground "#A0522D"))))
 '(rainbow-delimiters-depth-6-face ((t (:inherit nil :foreground "#00AA90"))))
 '(show-paren-match ((t (:background nil :weight bold :underline t))))
 '(sml-modeline-end-face ((t (:inherit mode-line))))
 '(sml-modeline-vis-face ((t (:inherit mode-line))))
 '(variable-pitch ((t (:height 1.3 :family "Garamond")))))

(provide 'custom)
;;; custom.el ends here
