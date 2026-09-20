<div align="center">
    <br>
    <header>
        <h3>
            <b>dotfiles</b>
        </h3>
    </header>
    <br>
    <br>
</div>

Managed with [GNU stow](https://www.gnu.org/software/stow/). Each package is a directory at the repo root; files are laid out relative to `$HOME` (e.g. `hypr/.config/hypr/...` → `~/.config/hypr/...`).

## Packages

| Package | Stows to | Notes |
|---|---|---|
| `ghostty` | `~/.config/ghostty` | |
| `starship` | `~/.config/starship.toml` | |
| `tmux` | `~/.tmux.conf` | |
| `zsh` | `~/.zshenv`, `~/.config/zsh/.zshrc` | `.zshenv` sets `ZDOTDIR`; history lives at `~/.local/state/zsh/zsh_history` |
| `hypr` | `~/.config/hypr` | |
| `waybar` | `~/.config/waybar` | |

## Install on a new machine

```sh
git clone git@github.com:OvidioCalvet/dotfiles.git ~/.dotfiles
cd ~/.dotfiles && stow -t ~ ghostty starship tmux zsh hypr waybar
```

## Not managed (local-only, keep out of this repo)

- `~/.gitconfig` — copy `git/.gitconfig.example` and fill in your real email; never commit it (repo is public).
- Anything in `.config/` that is app-managed or contains credentials (`spotify`, `google-chrome`, `discord`, `obsidian`, `pulse`, `dconf`, etc.), plus `~/.ssh`, `~/.gnupg`, toolchains and caches (`~/.cache`, `~/.local`, `~/.cargo`, `~/.rustup`, `~/.npm`, ...).
- `~/.config/nvim` is its own separate git repo.