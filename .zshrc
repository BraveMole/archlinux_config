zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list '' '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' max-errors 2
zstyle ':completion:*' prompt 'test'
zstyle :compinstall filename '/home/bastien/.zshrc'

autoload -Uz compinit
compinit

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob nomatch notify
unsetopt autocd beep
bindkey -v

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlinting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-git-branch/zsh-git-branch.zsh
source ~/.zsh/zsh-fzf-history-search/zsh-fzf-history-search.zsh
source ~/.zsh/zsh-fzf-history-search/zsh-fzf-history-search.plugin.zsh

alias ls='lsd'
alias la='lsd -a'
alias ll='lsd -l'
alias lla='lsd -la'
alias v='nvim'
alias cd='z'
alias t='i3-sensible-terminal'
