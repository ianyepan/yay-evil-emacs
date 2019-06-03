(global-set-key (kbd "C-c D") 'diff-buffer-with-file)

(put 'dired-find-alternate-file 'disabled nil)
(add-hook 'dired-mode-hook (lambda () (define-key dired-mode-map (kbd "RET")
                                        'dired-find-alternate-file)))

(global-set-key (kbd "M-q") 'nil)       ; fill paragraph (for line breaks)
(global-set-key (kbd "C-x F") 'replace-string)
(global-set-key (kbd "s-c") 'kill-ring-save)
(global-set-key (kbd "C-x 5 F") 'toggle-frame-fullscreen)

(defun eshell-new()
  "Open a new instance of eshell, numbered by <N>."
  (interactive)
  (eshell 'N))

(eshell-git-prompt-use-theme 'git-radar)

;; The ``clear'' command
(defun eshell/clear ()
  "Clear the eshell buffer to the top."
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))
(global-set-key (kbd "C-8") 'eshell-previous-input)
(global-set-key (kbd "C-9") 'eshell-next-input)

;; To let eshell use brew-installed commands
(setenv "PATH" (concat "/usr/local/bin/" ":" (getenv "PATH")))
(setq exec-path (append '("/usr/local/bin/") exec-path))

;; Eshell aliases
(defalias 'ff 'find-file)

(add-hook 'after-init-hook 'global-flycheck-mode)

;; Use aspell to replace ispell
(setq ispell-program-name "/usr/local/bin/aspell")

;; Core Ido
(ido-mode 1)
(setq ido-everywhere t)
(setq ido-enable-flex-matching t)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)

;; Vertical (for better visibility)
(require 'ido-vertical-mode)
(ido-vertical-mode 1)

(setq-default tab-width 3)
(setq-default indent-tabs-mode nil) ;; Always use spaces, no tabs
(setq js-indent-level 2)
(setq c-default-style "bsd"             ; Allman style
      c-basic-offset 3)                 ; 3-space indentation for c
(add-hook 'python-mode-hook '(lambda () (setq python-indent 3))) ; 3-space-indentation for python
(defun newline-and-push-brace ()
  "`newline-and-indent', but bracket aware."
  (interactive)
  (insert "\n")
  (when (looking-at "}")
    (insert "\n")
    (indent-according-to-mode)
    (forward-line -1))
  (indent-according-to-mode))

(global-set-key (kbd "RET") 'newline-and-push-brace)
(require 'auto-indent-mode)

;; In order for 'pdflatex' to work. Also had to export PATH from .zshrc
(setenv "PATH" (concat "/usr/texbin:/Library/TeX/texbin:" (getenv "PATH")))
(setq exec-path (append '("/usr/texbin" "/Library/TeX/texbin") exec-path))

;; Colourful Org LaTeX Code Blocks
(require 'ox-latex)
(add-to-list 'org-latex-packages-alist '("" "minted"))
(setq org-latex-listings 'minted)
(setq org-latex-pdf-process
      '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))
(setq org-latex-minted-options '(("linenos=true")))

(global-set-key (kbd "C-x g") 'magit-status)

(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(require 'ox-md)
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(setq org-todo-keywords
      '((sequence "TODO" "DOING" "DONE")))
(setq org-todo-keyword-faces
      '(
        ("TODO" . (:background "#FFCDCD" :foreground "#801111" :box t))
        ("DOING" . (:background "#FDF381" :foreground "#4D3100" :box t))
        ("DONE" . (:background "#E0FDD5" :foreground "#1A4D00" :box t))))

(require 'elpy)
(elpy-enable)
(setq elpy-rpc-python-command "/usr/local/bin/python3")
(setq python-shell-interpreter "/usr/local/bin/python3")
(add-hook 'elpy-mode-hook (lambda () (highlight-indentation-mode -1)))
(defun my/python-mode-hook ()
  (add-to-list 'company-backends 'company-jedi))  ;; company-jedi
(add-hook 'python-mode-hook 'my/python-mode-hook)

(set-register ?e '(file . "~/.emacs.d/init.el"))
(set-register ?o '(file . "~/.emacs.d/config.org"))
(set-register ?c '(file . "~/.emacs.d/custom.el"))
(set-register ?r '(file . "~/.emacs.d/themes/tronlegacy-theme.el"))

(fset 'make-word-italics
   (lambda (&optional arg) "Keyboard macro."
     (interactive "p") (kmacro-exec-ring-item '([47 escape 102 47] 0 "%d") arg)))
(global-set-key (kbd "C-x C-k I") 'make-word-italics)

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

(setq user-full-name "Ian Y.E. Pan")

(server-start)

(delete-selection-mode 1)

(setq frame-title-format		
      '((:eval (if (buffer-file-name)		
                   (abbreviate-file-name (buffer-file-name))		
                 "%b"))))		
;; Title bar match theme
(when (eq system-type 'darwin) (ns-auto-titlebar-mode))

;; Set the padding between lines
(defvar line-padding 0)                 ; change value from 0 - 3
(defun add-line-padding ()
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

(add-hook 'buffer-list-update-hook 'add-line-padding)

(minions-mode 1)

(setq inhibit-splash-screen t)
(setq ring-bell-function 'ignore)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode t)
(column-number-mode t)
(setq-default indicate-empty-lines t)
(add-hook 'prog-mode-hook 'highlight-numbers-mode)
(add-hook 'prog-mode-hook 'highlight-operators-mode)
(add-hook 'prog-mode-hook 'hes-mode)    ;; highlight escape sequences
(add-hook 'prog-mode-hook 'whitespace-cleanup-mode)

(setq initial-major-mode 'org-mode)
(with-current-buffer
    (get-buffer-create "*scratch*") (org-mode)
    (make-local-variable 'kill-buffer-query-functions)
    (add-hook 'kill-buffer-query-functions 'kill-scratch-buffer))
(setq initial-scratch-message "# Welcome back to Emacs, Ian Y.E. Pan
# Here's the scratch buffer for quick notes\n\n")
(defun kill-scratch-buffer ()
  (set-buffer (get-buffer-create "*scratch*"))
  (remove-hook 'kill-buffer-query-functions 'kill-scratch-buffer)
  (kill-buffer (current-buffer))
  (set-buffer (get-buffer-create "*scratch*")) (org-mode)
  (make-local-variable 'kill-buffer-query-functions)
  (add-hook 'kill-buffer-query-functions 'kill-scratch-buffer) nil)

(add-hook 'prog-mode-hook 'column-enforce-mode)
(setq column-enforce-column 79)

(global-font-lock-mode t)

(setq make-backup-files nil)

(global-visual-line-mode t)

(setq show-paren-delay 0)
(show-paren-mode 1)

(defun toggle-transparency ()
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
(global-set-key (kbd "C-c t") 'toggle-transparency)

(defun toggle-window-split ()
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
             (next-win-buffer (window-buffer (next-window)))
             (this-win-edges (window-edges (selected-window)))
             (next-win-edges (window-edges (next-window)))
             (this-win-2nd (not (and (<= (car this-win-edges)
                                         (car next-win-edges))
                                     (<= (cadr this-win-edges)
                                         (cadr next-win-edges)))))
             (splitter
              (if (= (car this-win-edges)
                     (car (window-edges (next-window))))
                  'split-window-horizontally
                'split-window-vertically)))
        (delete-other-windows)
        (let ((first-win (selected-window)))
          (funcall splitter)
          (if this-win-2nd (other-window 1))
          (set-window-buffer (selected-window) this-win-buffer)
          (set-window-buffer (next-window) next-win-buffer)
          (select-window first-win)
          (if this-win-2nd (other-window 1))))))
(global-set-key (kbd "C-x 4 5") 'toggle-window-split)

(defun split-and-follow-horizontally ()
  (interactive)
  (split-window-below)
  (other-window 1))
(global-set-key (kbd "C-x 2") 'split-and-follow-horizontally)
(defun split-and-follow-vertically ()
  (interactive)
  (split-window-right)
  (other-window 1))
(global-set-key (kbd "C-x 3") 'split-and-follow-vertically)

(require 'which-key)
(which-key-mode t)
(setq which-key-idle-delay 0.5)
