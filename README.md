## Ian's Emacs Configuration

<p align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/EmacsIcon.svg/120px-EmacsIcon.svg.png" />
</p>

### Thanks for dropping by!
This is my personal Emacs configuration (on GNU Emacs 26.2). It's unopinionated and was created for general use in mind. I've documented, as detailed as possible, what **each code snippet does** in my `config.org` file.

This Emacs config starts up **super fast** with an average init time of 0.7 to 1.1 seconds.

### Installation
Back up your `~/.emacs.d/` first (if you have one):

```mv ~/.emacs.d/ ~/.emacs.d.bak/```

Git clone my configuration to your new `~/.emacs.d/` :

```git clone https://github.com/ianpan870102/.emacs.d.git ~/.emacs.d/```

### "Rolling" Release
I will constantly push new commits since *a real Emacser* is never completely satisfied with his/her setup.

### How the config structure works

The `init.el` requires `config.el`, which is produced by org-babel and `config.org`. This allows me to put most of my configuration in an Org file with literate programming style (good for documenting code usage!).

If you prefer the use-package approach, I have the same set up here: https://github.com/ianpan870102/.use-package.emacs.d/blob/master/init.el

## Packages that I use:

#### Vim Editing habits (Optional depending on your preferences)
- evil

#### Git integration
- magit

#### Better Emacs defaults
- company (autocompletion)
- ido-vertical-mode
- smooth-scrolling
- yasnippets
- dashboard (welcome screen)

#### Org mode
- org (use most recent version instead of the built-in one)
- org-bullets

#### File management
- ranger

#### Web development
- rainbow-mode

#### Friendly warnings
- flycheck

#### Lightweight syntax highlight improvement for all languages
- highlight-operators
- highlight-numbers
- highlight-escape-sequences

## Appendix I: Themes I adore
- Spacemacs Dark & Light: https://github.com/nashamri/spacemacs-theme
- Gruvbox Dark: https://github.com/Greduan/emacs-theme-gruvbox
- Nord: https://github.com/arcticicestudio/nord-emacs
- Solarized Dark: https://github.com/bbatsov/solarized-emacs
- GitHub Default Theme: https://github.com/philiparvidsson/GitHub-Modern-Theme-for-Emacs
- Emacs Reverse Video Theme (emacs -r): https://github.com/syohex/emacs-reverse-theme
- Monochrome: https://github.com/fxn/monochrome-theme.el
- Monokai Pro (not the original Monokai): https://github.com/belak/emacs-monokai-pro-theme

### Wilmersdorf Theme
The default installation of my Emacs configuration is shipped with the Wilmersdorf theme I made myself.
It is inspired by Monochrome, Spacemacs Dark, Ariake Dark, and Raiju.
You can find more information on the theme here: https://github.com/ianpan870102/Emacs-Wilmersdorf-Theme

## Appendix II: Fonts I adore
- Monaco (curvy, easy to read)
- Input Mono (most compliment; customizable, modern-looking and geeky)
- Source Code Pro (playful and modern-looking)
- Hack / Menlo / DejaVu Sans Mono family (default on lots of systems)
- Andale Mono (tall, narrow, elegant characters)

## FAQ:
#### 1. Why does my font look wrong?
- You might not have the required fonts installed, feel free to install them or change the font settings to your own liking in `config.org` (`set-frame-font`)

#### 2. How can I install my own packages that I want?
You should be able to install packages the normal way (`M-x list-packages RET` and `i x` on the desired package row). If you plan to sync your config files across machines and wish to be prompted for installation if the required packages are missing, you can add the package's name to `init.el` file's `package-select-packages` variable.

#### 3. How can I remove packages that I don't need?
For this you need two steps:
- First, type `M-x list-packages RET` in Emacs bindings (or `:list-packages RET` in Evil Normal state) and delete the unwanted package by placing your cursor on the row and press `d` followed by an `x`.
- Next, in the `init.el` file, you'll want to remove the package's name from the `package-select-packages` list to disable the installing prompt when you start Emacs next time.
