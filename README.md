# Version-2-Emacs-Config

**P.s. Version 1 is less customized and is deprecated in favour of a clean washup that resulted in this repo.**

### Intro
Thanks for dropping by! This is my personal Emacs configuration (I'm using GNU Emacs 26.2), tailored to suit my needs. I've documented (as detailed as possible) what each function does in my `config.org` file.

This Emacs config starts up super fast with an average init time of 1.1 seconds

### "Rolling" Release
I will constantly push new commits since *a real Emacser* is never completely satisfied with his/her setup.

### The file structure in a few words:

My `init.el` requires `config.el`(produced by org-babel + `config.org`) and `custom.el`
(I configured the path to which the settings changed by Custom will all be extracted and written.)

## Packages that I use:

#### (Optional depending on your habits)
- evil
- evil-commentary

#### For better defaults and UI functionalities
- auto-indent-mode
- smex
- ido-vertical-mode
- smooth-scrolling
- column-enforce-mode
- flycheck
- org-bullets
- minions
- highlight-operators
- highlight-numbers
- highlight-escape-sequences
- whitespace-cleanup-mode

#### Theme(s) I adore
- spacemacs-theme

#### Web development
- rainbow-mode

#### Git integration
- magit
