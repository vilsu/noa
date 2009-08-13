" Trailing character
set list

" ~/bin/editors/vim/docs/eol-evaluation.markdown
set listchars=eol:$,tab:>-,precedes:<
hi NonText ctermfg=4
hi normal ctermfg=3
hi number ctermfg=1
hi todo ctermbg=3

"we need both cterm and gui for combability
hi SpecialKey ctermfg=5 guifg='Red'

highlight CursorLine guibg=#400000
