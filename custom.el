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
   '("0eccc893d77f889322d6299bec0f2263bffb6d3ecc79ccef76f1a2988859419e" "1dd7b369ab51f00e91b6a990634017916e7bdeb64002b4dda0d7a618785725ac" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "8654a53760ed4660cfefabd41d1d8193b04caf384aabfe179adc30716fda8b2a" "233329275a894632acb308ec2c27d5c67a1f3a49fa7d350df44703fe0b1e7f92" "358008075ebf553cbac291fbc25b555a63ca6ea06951f862db6cb19e8ed299f4" "487063309a67424949cacf52f368199ece937ec2987613869255c4f62eff745d" "100eeb65d336e3d8f419c0f09170f9fd30f688849c5e60a801a1e6addd8216cb" "6daa09c8c2c68de3ff1b83694115231faa7e650fdbb668bc76275f0f2ce2a437" "000db439945835efd0da94580b2b551c6ddd4145556636aace091f512c8e6bbc" "19f3cbf2287806f427d76c551f59a1eb21c5d07432ff0412f8195d37ff83cfef" default))
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
 '(line-spacing 0.20)
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
   '(color-theme-sanityinc-tomorrow spacemacs-theme github-modern-theme htmlize drag-stuff cdlatex smartparens undo-tree magit yasnippet-snippets writeroom-mode whitespace-cleanup-mode which-key vimrc-mode smooth-scrolling smex rainbow-mode rainbow-delimiters prettier-js org-bullets nlinum-relative multiple-cursors minions markdown-mode lorem-ipsum jedi ido-vertical-mode highlight-operators highlight-numbers highlight-escape-sequences flycheck flx-ido expand-region eshell-git-prompt esh-autosuggest emmet-mode elpy dockerfile-mode dired-sidebar company-jedi column-enforce-mode avy auto-indent-mode))
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
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 150 :width normal :foundry "nil" :family "hack"))))
 '(show-paren-match ((t (:weight bold))))
 '(variable-pitch ((t (:height 1.3 :family "Garamond")))))

(provide 'custom)
;;; custom.el ends here
