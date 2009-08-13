# to only save unique results in history
export HISTCONTROL=ignoredups

# increase history size
export HISTSIZE=1000
export HISTFILESIZE=1000

# make sure all terminals save history
shopt -s histappend
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# if the cmdhist option is enabled, multi-line commands are saved to the history with embedded newlines rather than using semicolon separators where possible
shopt -s lithist 

# Don't store duplicate adjacent items in the history
HISTCONTROL=ignoreboth
