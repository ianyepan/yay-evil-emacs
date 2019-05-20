# Version-2-Emacs-Config

**P.s. Version 1 is less customized and is deprecated in favour of a clean washup that resulted in this repo.**

### Intro
Thanks for dropping by! This is my personal Emacs configuration (I'm using GNU Emacs 26.2), tailored to suit my needs. I've documented (as detailed as possible) what each function does in my `config.org` file.

This Emacs config starts up super fast with an average init time of 2 to 3 seconds.

### "Rolling" Release
I will constantly push new commits since *a real Emacser* is never completely satisfied with his/her setup.

### The file structure in a few words:

My `init.el` requires `config.el`(produced by org-babel + `config.org`) and `custom.el`
(I configured the path to which the settings changed by Custom will all be extracted and written.)

## Packages that I use:

#### For better defaults and UI functionalities
- ns-auto-titlebar
- drag-stuff
- whitespace-cleanup-mode
- which-key
- smooth-scrolling
- smex
- org-bullets
- multiple-cursors
- minions
- ido-vertical-mode
- highlight-operators
- highlight-numbers
- highlight-escape-sequences
- flycheck
- flx-ido
- column-enforce-mode
- auto-indent-mode

#### Themes I adore
- monokai-theme
- color-theme-sanityinc-tomorrow
- reverse-theme
- spacemacs-theme
- github-modern-theme

#### JS and CSS development
- rainbow-mode
- prettier-js

#### Python development
- jedi
- elpy
- company-jedi

#### Git integration
- magit
- eshell-git-prompt
