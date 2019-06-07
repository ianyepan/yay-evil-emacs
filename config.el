(setq evil-want-C-u-scroll t)  ; use C-u to scroll up half a page
(require 'evil)
(evil-mode 1)
(evil-ex-define-cmd "q" 'kill-this-buffer) ; prevent accidentally killing the frame

(defun ian/save-and-kill-this-buffer ()
  (interactive)
  (save-buffer)
  (kill-this-buffer))
(evil-ex-define-cmd "wq" 'ian/save-and-kill-this-buffer)

(add-hook 'prog-mode-hook 'company-mode)
(setq company-minimum-prefix-length 1)
(setq company-idle-delay 0)
(with-eval-after-load 'company
  (define-key company-active-map (kbd "C-n") 'company-select-next)
  (define-key company-active-map (kbd "C-p") 'company-select-previous))

(require 'color)
(let ((bg (face-attribute 'default :background))
      (ac (face-attribute 'match :foreground)))
  (custom-set-faces
   `(company-tooltip ((t (:inherit default :background ,(color-lighten-name bg 20)))))
   `(company-scrollbar-bg ((t (:background ,(color-lighten-name bg 20)))))
   `(company-scrollbar-fg ((t (:background ,(color-lighten-name bg 35)))))
   `(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
   `(company-tooltip-common ((t (:inherit font-lock-constant-face))))
   `(company-preview-common ((t (:foreground ,ac :background ,(color-lighten-name bg 25)))))))

(add-hook 'after-init-hook 'global-flycheck-mode)
(setq ispell-program-name "/usr/local/bin/aspell")  ; use aspell instead of ispell

;; Core Ido
(ido-mode 1)
(setq ido-everywhere t)
(setq ido-enable-flex-matching t)
(setq ido-vertical-define-keys 'C-n-C-p-up-and-down)

;; Vertical (for better visibility)
(require 'ido-vertical-mode)
(ido-vertical-mode 1)

(setq-default tab-width 4)
(setq-default indent-tabs-mode nil) ;; Always use spaces, no tabs
(setq js-indent-level 2)
(setq c-default-style "bsd"             ; Allman style
      c-basic-offset 4)                 ; 3-space indentation for c
(add-hook 'python-mode-hook '(lambda () (setq python-indent 4))) ; 3-space-indentation for python
(defun ian/newline-and-push-brace ()
  "`newline-and-indent', but bracket aware."
  (interactive)
  (insert "\n")
  (when (looking-at "}")
    (insert "\n")
    (indent-according-to-mode)
    (forward-line -1))
  (indent-according-to-mode))

(global-set-key (kbd "RET") 'ian/newline-and-push-brace)
(require 'auto-indent-mode)

;; In order for 'pdflatex' to work. Also had to export PATH from .zshrc
;; export PATH="$PATH:/Library/TeX/texbin"
(setenv "PATH" (concat "/usr/texbin:/Library/TeX/texbin:" (getenv "PATH")))
(setq exec-path (append '("/usr/texbin" "/Library/TeX/texbin") exec-path))

;; Colourful Org LaTeX Code Blocks
(require 'ox-latex)
(add-to-list 'org-latex-packages-alist '("" "minted"))
(setq org-latex-listings 'minted)
(setq org-latex-pdf-process
      '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))
(setq org-latex-minted-options '(("linenos=true")))

(setq org-highlight-latex-and-related (quote (latex)))
(setq org-latex-classes
      (quote
       (("article" "\\documentclass[12pt, a4paper]{article}"
         ("\\section{%s}" . "\\section*{%s}")
         ("\\subsection{%s}" . "\\subsection*{%s}")
         ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
         ("\\paragraph{%s}" . "\\paragraph*{%s}")
         ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))))
(setq org-latex-pdf-process
      (quote
       ("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f")))

(defun ian/load-init()
  "Reload .emacs.d/init.el"
  (interactive)
  (load-file "~/.emacs.d/init.el"))

(global-set-key (kbd "C-x g") 'magit-status)

(require 'ox-md) ;; for exporting org mode to markdown
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(set-register ?e '(file . "~/.emacs.d/init.el"))
(set-register ?o '(file . "~/.emacs.d/config.org"))
(set-register ?c '(file . "~/.emacs.d/custom.el"))

(require 'smex)
(global-set-key (kbd "M-x") 'smex)

(require 'smooth-scrolling)
(smooth-scrolling-mode 1)
(setq scroll-margin 1
      smooth-scroll-margin 1
      scroll-conservatively 0
      scroll-up-aggressively 0.01
      scroll-down-aggressively 0.01)
(setq-default scroll-up-aggressively 0.01
              scroll-down-aggressively 0.01)

(require 'smartparens-config)
(add-hook 'prog-mode-hook 'smartparens-mode)

;; Set the padding between lines
(defvar line-padding 0)                 ; change value from 0 - 3
(defun ian/add-line-padding ()
  "Add extra padding between lines"
  (let ((overlays (overlays-at (point-min))))
    (while overlays
      (let ((overlay (car overlays)))
        (if (overlay-get overlay 'is-padding-overlay)
            (delete-overlay overlay)))
      (setq overlays (cdr overlays))))
  (let ((padding-overlay (make-overlay (point-min) (point-max))))
    (overlay-put padding-overlay 'is-padding-overlay t)
    (overlay-put padding-overlay 'line-spacing (* .1 line-padding))
    (overlay-put padding-overlay 'line-height (+ 1 (* .1 line-padding))))
  (setq mark-active nil))

(add-hook 'buffer-list-update-hook 'ian/add-line-padding)

(setq inhibit-splash-screen t)
(setq ring-bell-function 'ignore)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode t)
(setq blink-cursor-blinks 0) ;; blink forever
(setq-default indicate-empty-lines t)
(add-hook 'prog-mode-hook 'highlight-numbers-mode)
(add-hook 'prog-mode-hook 'highlight-operators-mode)
(add-hook 'prog-mode-hook 'hes-mode)    ;; highlight escape sequences
(add-hook 'prog-mode-hook 'whitespace-cleanup-mode)

(setq make-backup-files nil)

(setq show-paren-delay 0)
(show-paren-mode 1)

(defun ian/toggle-transparency ()
  (interactive)
  (let ((alpha (frame-parameter nil 'alpha)))
    (set-frame-parameter
     nil 'alpha
     (if (eql (cond ((numberp alpha) alpha)
                    ((numberp (cdr alpha)) (cdr alpha))
                    ;; Also handle undocumented (<active> <inactive>) form.
                    ((numberp (cadr alpha)) (cadr alpha)))
              100)
         '(85 . 85) '(100 . 100)))))
(global-set-key (kbd "C-c t") 'ian/toggle-transparency)

(defun ian/split-and-follow-horizontally ()
  (interactive)
  (split-window-below)
  (other-window 1))
(global-set-key (kbd "C-x 2") 'ian/split-and-follow-horizontally)
(defun ian/split-and-follow-vertically ()
  (interactive)
  (split-window-right)
  (other-window 1))
(global-set-key (kbd "C-x 3") 'ian/split-and-follow-vertically)
