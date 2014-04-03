
#autoload -U promptinit
#promptinit

PATH=~/.cabal/bin:$PATH
export PATH

autoload -U colors && colors

export EDITOR="vim"

alias apt-get="sudo apt-get"
alias apt-cache="sudo apt-cache"
alias halt="sudo halt"
alias reboot="sudo reboot"

alias ls='ls --color=auto'
export GREP_COLOR="1;33"
alias grep='grep --color=auto' 
alias tree='tree -C'

alias tmux='tmux -2'

alias -s hs=vim

PROMPT="%{$fg[green]%}%n%{$reset_color%} %B%{$fg[yellow]%}%(!.#.$)%{$reset_color%}%b "
RPROMPT="%{$fg[cyan]%}%~%{$reset_color%}"
#PROMPT="%{$fg[green]%}%n%{$reset_color%} %{$fg[cyan]%}%~%{$reset_color%} %{$fg[yellow]%}%(!.#.$) %{$reset_color%}"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000
setopt appendhistory autocd extendedglob nomatch
unsetopt beep
bindkey -e

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/james/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
