# to have Bash like C-X-E
autoload edit-command-line
zle -N edit-command-line
bindkey '^Xe' edit-command-line
