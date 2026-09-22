# ~/.zshrc
setopt AUTO_CD

# init starship only once per shell — re-running `eval "$(starship init zsh)"`
# (e.g. by sourcing this file again) wraps zle-keymap-select a second time,
# which calls `zle reset-prompt` twice on every vi mode switch and makes the
# redraw eat previous lines (starship issues #7063 and #2915).
# NOT exported, so new shells still run the init normally.
if [[ -z ${_STARSHIP_INIT_DONE:-} ]]; then
  eval "$(starship init zsh)"
  _STARSHIP_INIT_DONE=1
fi

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
alias ls='eza --group-directories-first --icons=auto --color=auto'
alias ll='eza -lh --group-directories-first --icons=auto --git'
alias la='eza -lah --group-directories-first --icons=auto --git'
alias lt='eza --tree --icons=auto'
