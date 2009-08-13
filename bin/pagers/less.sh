# Less Colors for Man Pages

# comment these out in Ubuntu
export LESS_TERMCAP_mb=$'\E[01;31m'         # begin blinking
export LESS_TERMCAP_me=$'\E[0m'        # end mode

export LESS_TERMCAP_se=$'\E[0m'        # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m' # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'        # end underline

export LESS_TERMCAP_us=$'\E[04;33;146m'    # begin underline is now yellow
#                             |  |  |
#                             |  |----------------- yellow
#                             |-------------------- underline

# to have the indication of cursor's location and line numbers, and R
export LESS="-mNR"
#               |--------- only ASCII color

# ~/bin/shells/less/bugs
# ~/bin/shells/less/notes
