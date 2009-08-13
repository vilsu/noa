setopt hist_verify              # when using ! cmds, confirm first
setopt interactivecomments     # date # comment will work

# remember about a year of history
export HISTSIZE=2000
export SAVEHIST=2000

# I do not want two subsequent same history matches stored
setopt HIST_IGNORE_DUPS

# I do not want to save everything to history
# All lines starting with a space will not be saved to a history
setopt HISTIGNORESPACE

setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_ALL_DUPS

# I want to share history between multiple shells
setopt SHARE_HISTORY

# Don't overwrite, append!
setopt APPEND_HISTORY

setopt HIST_VERIFY

setopt EXTENDED_HISTORY

export HISTFILE=~/.history 
