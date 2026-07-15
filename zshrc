alias l='ls -lah'
# KTRLCONFIG

autoload -Uz promptinit
promptinit

prompt adam1

precmd() {
    print -Pn "\e]0;%n@%m: %~\a"
}

setopt autocd beep extendedglob nomatch notify ALWAYS_TO_END AUTO_MENU AUTO_PARAM_SLASH

# EMACS KEYBINDS
bindkey -e

# history

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# aliases

alias less="most"
alias ls='eza'
alias l='ls -lh'
alias la='ls -lah'
alias lt='la --total-size'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias ip='ip -color=auto'
alias tree='tree -C'

alias sul="sudo -i -D $PWD"
alias sui="sudo -i"

# zstyle

eval "$(dircolors -b)"

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"
zstyle ':completion:*' completer _extensions _complete _approximate
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' max-errors 3
zstyle ':completion:*' menu select
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' verbose yes
zstyle ':completion:*:*:*:*:descriptions' format '%F{green}-- %d --%f'
zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
zstyle ':completion:*' use-compctl true
zstyle ':completion:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

autoload -Uz compinit
compinit
