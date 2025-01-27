export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export PATH="$PATH:/opt/nvim-linux64/bin"

export ZINIT_HOME="$HOME/.local/share/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

export EDITOR=nvim
setopt vi
export KEYTIMEOUT=1

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

bindkey ^y autosuggest-accept
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' completer _extensions _complete _approximate
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"
zstyle ':completion:*:descriptions' format '[%d]'
zstyle ':completion:*' menu no

bindkey '^I' fzf-tab-complete

autoload -U colors && colors
autoload -Uz compinit && compinit

compdef _dirs ls

HISTSIZE=5000
HISTFILE=~/.cache/zsh/history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

alias so="source ~/.zshrc"

function runnvim() { nvim }
zle -N runnvim
bindkey ^n runnvim

bindkey "^[k" up-history
bindkey "^[j" down-history

autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

zinit cdreplay -q
eval "$(zoxide init zsh)"
