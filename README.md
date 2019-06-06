## Ian's Emacs Configuration

### Thanks for dropping by!
This is my personal Emacs configuration (on GNU Emacs 26.2). It's unopinionated and was created for general use in mind. I've documented, as detailed as possible, what **each code snippet does** in my `config.org` file.

This Emacs config starts up **super fast** with an average init time of 1.1 second.

### Installation
Back up your `~/.emacs.d/` first (if you have one):

```mv ~/.emacs.d/ ~/.emacs.d.bak/```

Git clone my configuration to your new `~/.emacs.d/` :

```git clone https://github.com/ianpan870102/.emacs.d.git ~/.emacs.d/```

### "Rolling" Release
I will constantly push new commits since *a real Emacser* is never completely satisfied with his/her setup.

### How the config structure works

My `init.el` requires `config.el`(produced by org-babel + `config.org`) and `custom.el`.

## Packages that I use:

#### Vim Editing habits (Optional depending on your preferences)
- evil

#### For better defaults
- auto-indent-mode
- smex
- ido-vertical-mode
- smooth-scrolling
- column-enforce-mode
- flycheck
- whitespace-cleanup-mode

#### Lightweight syntax highlight improvement for all languages
- highlight-operators
- highlight-numbers
- highlight-escape-sequences

#### Org mode
- org-bullets

#### Themes I adore
- nord-theme
- spacemacs-theme

#### Web development
- rainbow-mode

#### Git integration
- magit
