# source ~/bin/shells/bash4-extras.sh

source ~/bin/shells/bash/alpha-options.sh
# source ~/bin/shells/bash/alpha-options-rejected.sh

#source ~/oma/.personal/ssh
#source ~/oma/.personal/shellVariables
#source ~/oma/.personal/alias.sh

# puts colors for All grep commands
export GREP_OPTIONS='--color=auto'

set -o emacs

# to get Ctr-S -forward search to work
stty -ixon

source ~/bin/shells/bash/prompt.bash

source ~/bin/shells/bash/typo-checking.sh

source ~/bin/shells/bash/history.sh

source ~/bin/shells/codingSettings.sh

#source ~/bin/pagers/less.sh

source ~/bin/shells/bash/sources

export VISUAL=/usr/bin/vim
export EDITOR=/usr/bin/vim
export PSQL_EDITOR=/usr/bin/vim

alias ls="ls --color"
