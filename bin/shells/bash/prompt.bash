function get_git_branch {
  git branch | awk '/^\*/ { print $2 }'
}
function get_git_dirty {
  git diff --quiet || echo '*'
}
function get_git_prompt {
  git branch &> /dev/null || return 1
  echo "($(get_git_branch) $(get_git_dirty)) "
}

export PS1='\u@\h \w $(get_git_prompt)\$ '

# http://henrik.nyh.se/2008/12/git-dirty-prompt
