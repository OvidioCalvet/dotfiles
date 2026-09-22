<div align="center">
    <br>
    <header>
        <h3>
            <b>dotfiles</b>
            managed with [GNU stow](https://www.gnu.org/software/stow/)
        </h3>
    </header>
    <br>
    <br>
</div>

## Required

before installing make sure you have gnu stow installed

**Arch**
```sh
sudo pacman -S stow
```

**Fedora**
```sh
sudo dnf install stow
```

**MacOS**
```sh
brew install stow
```

## Install

clone the repo to a `~/.dotfiles` directory

```sh
git clone git@github.com:OvidioCalvet/dotfiles.git ~/.dotfiles
```

after cloning, cd into your dotfiles directory and run stow targeting the specified configurations

```sh
cd ~/.dotfiles && stow -t ~ ghostty starship tmux zsh hypr waybar
```
