<h3 align="center">Ian's Yay-Evil Emacs: An even better 'better defaults'</h3>
<hr/>

<p align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/EmacsIcon.svg/120px-EmacsIcon.svg.png" />
</p>

<p align="center">
<a href="https://github.com/ianpan870102/.emacs.d"><img src="https://img.shields.io/badge/Maintained%3F-yes-green.svg" alt="Maintenance"></a>
<a href="https://www.gnu.org/licenses/gpl-3.0"><img src="https://img.shields.io/badge/License-GPL%20v3-blue.svg" alt="GPL License"></a>
<a href="https://github.com/ianpan870102/.emacs.d"><img src="https://img.shields.io/github/release/ianpan870102/.emacs.d" alt="Version"></a>
<a href="https://github.com/sindresorhus/awesome"><img src="https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg" alt="Awesome"></a>
</p>

### Welcome!
This Emacs "distro" is based on my personal Emacs configuration. It's unopinionated and was created for general use in mind. The package settings are grouped in a logical manner, and I've documented as detailed as possible what each code snippet does in my `config.org` file.


You can find my opinionated personal configuration [here](https://github.com/ianpan870102/.personal-emacs.d).


This Emacs config starts up **super fast** with an average init time of 0.7 second.

### Installation
Back up your `~/.emacs.d/` first (if you have one):

```
mv ~/.emacs.d/ ~/.emacs.d.bak/
```

Git clone my configuration to your new `~/.emacs.d/` :

```
# For Emacs 26 and below
git clone https://github.com/ianpan870102/yay-evil-emacs.git ~/.emacs.d

# For Emacs 27
git clone https://github.com/ianpan870102/yay-evil-emacs.git ~/.config/emacs/
```

### "Rolling" Release
I will constantly push new commits as soon as I discover new things suitable for this "distro"

### How the config structure works

The `init.el` requires `config.el`, which is produced by org-babel and `config.org`. This allows me to put most of my configuration in an Org file with literate programming style (good for documenting code usage!).

### Packages that I use:

#### Package manager
- use-package

#### Vim editing habits (optional depending on your preferences)
- evil
- evil-collection
- evil-commentary
- evil-magit

#### Git integration
- magit

#### Better Emacs defaults
- company (auto-completion)
- ido-vertical-mode
- ido-completing-read+ (ido-ubiquitous)
- yasnippets & yasnippet-snippets
- dashboard (welcome screen)

#### Org mode
- org-bullets

#### Friendly warnings
- flycheck

#### Lightweight syntax highlight improvement for all languages
- highlight-operators
- highlight-numbers
- highlight-escape-sequences

### Appendix I: Themes I adore
- [Dracula](https://github.com/dracula/dracula-theme/)
- [Gruvbox Dark](https://github.com/Greduan/emacs-theme-gruvbox)
- [Nord](https://github.com/arcticicestudio/nord-emacs)
- [Monochrome](https://github.com/fxn/monochrome-theme.el)
- [Zenburn](https://github.com/bbatsov/zenburn-emacs)

If you prefer a theme pack with some of the most popular themes, I recommend the emacs-doom-themes package
- [Doom-themes package](https://github.com/hlissner/emacs-doom-themes)

### Wilmersdorf Theme
The default installation of my Emacs configuration ships with the Wilmersdorf theme I made myself.
It is inspired by Monochrome, Spacemacs Dark, Ariake Dark, and Raiju.
You can find more information on my theme [here](https://github.com/ianpan870102/wilmersdorf-emacs-theme).

### Appendix II: Fonts I adore
- Source Code Pro (playful and modern-looking, easy on the eyes)
- Droid Sans Mono (slick and elegant)
- Menlo / DejaVu family (classic, default on lots of systems)
- Input Mono (customizable, easy on the eyes)

### FAQ:
#### 1. But I'm not an Evil user
Sure! Simply delete the sections regarding Vi bindings in `config.org`.

#### 2. How can I install extra packages that I want?
You should be able to install packages the normal way (`M-x list-packages RET` and `i x` on the desired package row). If you plan to sync your config files across machines, add the configuration in `config.org` with your preferred syntax (use-package is recommended). Yay-Evil sets all the packages `:ensure` to true by default, so you don't need to add `:ensure t`.

#### 3. How can I remove packages that I don't need?
For this you need two steps:
- First, type `M-x list-packages RET` in Emacs bindings (or `:list-packages RET` in Evil Normal state) and delete the unwanted package by placing your cursor on the row and press `d` followed by an `x`.
- Next, in the `config.org` file, remove (or comment out) the relevant configuration code.
