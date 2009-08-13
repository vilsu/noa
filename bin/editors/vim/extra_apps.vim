" I want to be able to search also files which I have sourced
:command! -nargs=1 GrepSource :! grep <args> `sed -n 's/^source \(.*\)/\1/p' %`

:command! -nargs=1 GrepSourceLine2 :exe printf("!grep '<args>' '%s'/*", substitute(getline('.'), "\\%(source\\s*\\)\\(.*\\)$", "\\1",""))


:command! -nargs=1 GrepSourceLine :exe printf("!grep '<args>' '%s'", matchstr(getline('.'), '^#\=\s*\%(source\|\.\)\s*\zs\f\+'))



":command! -nargs=1 GrepSourceTest :echo printf("!grep '<args>' '%s'", matchstr(getline('.'), '^#\=\s*\%(source\|\.\)\s*\zs\f\+'))


" :DiffSaved
" to compare file in the base and the edited version
" to get out of the diff view, use :diffoff
function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()
"" another way is to use 
"" :w !diff % -
