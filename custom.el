;;; custom.el --- Emacs Configuration through Custom
;;  Author: Ian Y.E. Pan
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
 '(company-global-modes (quote (not eshell-mode)))
 '(company-idle-delay t)
 '(company-minimum-prefix-length 2)
 '(compilation-message-face (quote default))
 '(css-fontify-colors nil)
 '(cursor-type (quote box))
 '(custom-safe-themes
   (quote
    ("4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "08a89acffece58825e75479333109e01438650d27661b29212e6560070b156cf" "1117b404ef52bcc24cdd0118b09d2b2fdee6c5ade4623515954bf6f11e0fe72a" "464acb512080f2ddb5d6e32d1d0885088a34737759961446293d7f0ae62872bc" "97b8bf2dacc3ae8ffbd6f0a76c606a659a0dbca5243e55a750cbccdad7efb098" "37c5cf50a60548aa7e01dbe36fd8bb643af7502d55d26f000070255a6b21c528" "9f08dacc5b23d5eaec9cccb6b3d342bd4fdb05faf144bdcd9c4b5859ac173538" "bee55ba5e878d0584db9b2fb33f75c348a3008fcfe8e05ab8cae897ca604fd95" "bf39b2d814971a6eaf4e9adde3b11016b742fe68dfe4c38667497821525a1662" "79dc2bcd864232143f961d46454c2252bb705b691967b61558e038e8497ff2e5" "980f635fa415d4703feaa26ce48f45826061ffc3a70e9ca1da0819908426845e" "d74fe1508cff43708fa2f97c4bf58d19f0e002b2e0c92bf958bf483113b7d89d" "7c0495f3973b9f79251205995ccccca41262b41a86553f81efe71c0dc3a50f43" "0eccc893d77f889322d6299bec0f2263bffb6d3ecc79ccef76f1a2988859419e" "1dd7b369ab51f00e91b6a990634017916e7bdeb64002b4dda0d7a618785725ac" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "8654a53760ed4660cfefabd41d1d8193b04caf384aabfe179adc30716fda8b2a" "233329275a894632acb308ec2c27d5c67a1f3a49fa7d350df44703fe0b1e7f92" "358008075ebf553cbac291fbc25b555a63ca6ea06951f862db6cb19e8ed299f4" "487063309a67424949cacf52f368199ece937ec2987613869255c4f62eff745d" "100eeb65d336e3d8f419c0f09170f9fd30f688849c5e60a801a1e6addd8216cb" "6daa09c8c2c68de3ff1b83694115231faa7e650fdbb668bc76275f0f2ce2a437" "000db439945835efd0da94580b2b551c6ddd4145556636aace091f512c8e6bbc" "19f3cbf2287806f427d76c551f59a1eb21c5d07432ff0412f8195d37ff83cfef" default)))
 '(default-input-method "chinese-zozy")
 '(ido-mode (quote both) nil (ido))
 '(isearch-lazy-highlight t)
 '(lazy-highlight-initial-delay 0)
 '(mc/always-repeat-command t)
 '(mc/always-run-for-all t)
 '(org-ellipsis "⤵")
 '(org-format-latex-options
   (quote
    (:foreground default :background default :scale 2.0 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
                 ("begin" "$1" "$" "$$" "\\(" "\\["))))
 '(org-highlight-latex-and-related (quote (latex)))
 '(org-latex-classes n)
 '(org-latex-listings (quote minted))
 '(org-latex-pdf-process
   (quote
    ("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f")))
 '(org-todo-keywords (quote ((sequence "TODO" "DOING" "DONE"))))
 '(package-selected-packages
   (quote
    (ns-auto-titlebar color-theme-sanityinc-solarized green-screen-theme monokai-theme color-theme-sanityinc-tomorrow reverse-theme spacemacs-theme github-modern-theme drag-stuff smartparens magit writeroom-mode whitespace-cleanup-mode which-key smooth-scrolling smex rainbow-mode prettier-js org-bullets multiple-cursors minions jedi ido-vertical-mode highlight-operators highlight-numbers highlight-escape-sequences flycheck flx-ido eshell-git-prompt elpy company-jedi column-enforce-mode auto-indent-mode)))
 '(prettier-js-args
   (quote
    ("--bracket-spacing" "true" "--jsx-bracket-same-line" "true" "--print-width" "80")))
 '(python-indent-guess-indent-offset nil)
 '(shr-max-image-proportion 0.5)
 '(sp-escape-quotes-after-insert nil)
 '(which-key-echo-keystrokes 0.25)
 '(which-key-idle-delay 0.5))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :foundry "nil" :family "Input"))))
 '(variable-pitch ((t (:height 1.3 :family "Garamond")))))

(provide 'custom)
;;; custom.el ends here
