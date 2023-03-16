[[ -d ${ZDOTDIR:-~}/.zephyr ]] ||
  git clone --recursive https://github.com/mattmc3/zephyr ${ZDOTDIR:-~}/.zephyr

source ${ZDOTDIR:-~}/.zephyr/zephyr.zsh

alias reload='exec $SHELL'

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

(( $+commands[gh] )) && alias clone="gh repo clone"

# ls and exa
alias la='ls -laa'
alias ldot='ls -ld .*'
(( $+commands[exa] )) && alias ls="exa -lh --icons  --time-style=long-iso --group-directories-first --sort=name --sort=ext"
(( $+commands[exa] )) && alias tree="exa --icons --tree"

# use bat instead of cat if bat is installed
(( $+commands[bat] )) && alias cat="bat --style=plain"

# fix typos
alias quit='exit'
alias cd..='cd ..'
