# ~/.zshrc
eval "$(starship init zsh)"

# vim mode on the command line
bindkey -v
bindkey -M viins '^?' backward-delete-char
bindkey -M viins '^H'  backward-delete-char

# jj -> normal mode from insert
function vi-cmd-escape() {
  zle vi-cmd-mode
}
zle -N vi-cmd-escape
bindkey -M viins 'jj' vi-cmd-escape

# autocomplete (cache dump under XDG cache, not $HOME)
autoload -Uz compinit && compinit -d "${XDG_CACHE_HOME:-$HOME/.cache}/zsh/zcompdump"
zstyle ':completion:*' menu select

# colorful ls (eza)
alias ls='eza --color=always --group-directories-first'
alias ll='eza -l --color=always'
alias la='eza -a --color=always'
