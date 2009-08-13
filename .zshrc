# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob nomatch notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/noa/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# ~/bin/shells/Zsh/references/describtion

# ./bin/shells/zsh/alphaOptions
# ./bin/shells/zsh/alphaOptionsRejected

setopt no_list_beep

export GREP_OPTIONS='--color=auto'
export GREP_COLOR="4;33"
alias ls="ls --color"

export EDITOR="vim"

source ~/bin/shells/zsh/emacs-like-settings.zsh
source ~/bin/shells/zsh/bash-characteristic-settings.zsh

# no YN -question as removing many files in a folder
setopt rmstarsilent

source ~/bin/shells/zsh/history.zsh

.  ~/bin/shells/zsh/keyboard_configs/dvorak
.  ~/bin/shells/zsh/keyboard_configs/nonKeyboardSpecific

# Manuals# {{{

# I want the keyboard shortcut Esc-i for reading manuals in info 
function run_info() { 
  # Prepend "info" to the command line and run it.
  BUFFER="info $BUFFER"
  zle accept-line
}

# Define a widget called "run_info", mapped to our function above.
zle -N run_info

# Bind it to ESC-i.
bindkey "^[i" run_info

# zgrep -c compinit ${~manuals}/zsh*
manuals='/usr/share/man/man<1-9>'
# }}}

export PAGER=less
# source ~/bin/pagers/less.sh

source ~/bin/shells/zsh/prompt.zsh

# ~/bin/shells/Zsh/references/multipleOutputsTee
setopt MULTIOS

# ~/bin/shells/Zsh/references/negation
setopt extendedglob

# to echo {a-z}
setopt BRACE_CCL

##### Stacks
# we do not want the size of stack too big
DIRSTACKSIZE=7

# ~/bin/shells/Zsh/references/stack
setopt pushdsilent autopushd pushdminus pushdtohome
#                 |          |          |--- with no arguments push to home
#                 |          |-------------- swaps the meaning of cd -1 and cd +1
#                 |------------------------- makes cd acts like pushd: allows you to use popd repeatedly 

### Tab Completions# {{{

# ~/bin/shells/Zsh/references/tabInWord
setopt completeinword

# when complete from middle, move cursor
setopt no_alwaystoend

## better tab completion
setopt AUTO_LIST AUTO_MENU

# ~/bin/shells/Zsh/references/tabParentDirectory
autoload -U compinit
compinit

### to get tab completions work
# http://zsh.sourceforge.net/Doc/Release/zsh_19.html
autoload -U compinstall
# }}}

# tab in simple, verbose, colorful form # {{{
zstyle ':completion:*' verbose yes

zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'

# to have all different types of matches displayed separately
zstyle ':completion:*' group-name ''

zstyle ':completion:*' completer _expand _complete _approximate _ignored

# generate descriptions with magic.
zstyle ':completion:*' auto-description 'specify: %d'

# Don't prompt for a huge list, page it!
zstyle ':completion:*:default' list-prompt '%S%M matches%s'

# Don't prompt for a huge list, menu it!
zstyle ':completion:*:default' menu 'select=0'

# Have the newer files last so I see them first
zstyle ':completion:*' file-sort modification reverse

zstyle ':completion:*' list-colors "=(#b) #([0-9]#)*=36=31"
# }}}

#. ~/oma/.personal/ssh
#. ~/oma/.personal/shellVariables
#. ~/oma/.personal/alias.sh

# to have better colors in Less by
# http://nion.modprobe.de/blog/archives/569-colored-manpages.html
alias man="TERMINFO=~/.terminfo/ LESS=C TERM=mostlike PAGER=less man"
. ~/bin/shells/login-functions.sh

. ~/bin/shells/codingSettings.sh
. ~/bin/shells/codingSettings.zsh



# ~/bin/shells/Zsh/sources
