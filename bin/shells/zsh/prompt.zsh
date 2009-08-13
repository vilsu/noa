# expand functions in the prompt
setopt prompt_subst

### case-insensitive (all),partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# get the name of the branch we are on
git_prompt_info() {
    #REL=$(git rev-parse --show-prefix 2>/dev/null) || { echo "$@" ; exit ; }

    BR=$(git symbolic-ref HEAD 2>/dev/null | awk -F/ '{ print $3 }') || { echo "$@" ; exit ; }
    echo $BR
}

#get_git_dirty() {
#  git diff --quiet || echo '*'
#}


get_git_dirty() {
set __MT_OK__=0

if [[ -d .git ]]; then
    __MT_OK__=1
fi

while [[ ! -d .git ]]; do
    cd ..
    if [[ -d .git ]]; then
        __MT_OK__=1
        break
    fi
    if [[ $PWD = "/" ]]; then
        break
    fi
done



if [[ __MT_OK__ -eq 1 ]]; then
           git diff --quiet || echo '*'                                                    
fi
}



autoload -U colors
colors
setopt prompt_subst

PROMPT='%{$fg[blue]%}%c %{$fg_bold[red]%}$(git_prompt_info)$(get_git_dirty)%{$fg[blue]%} $ %{$reset_color%}'

RPROMPT='%{$fg[green]%}%1(j.%j.)'
