"setlocal spell spelllang=en_uk
"set spell spellang=en_us

set showfulltag

" turn off very likely
set shortmess+=ts

" To have Java manuals
" TODO: Not working
"let &keywordprg='python /Users/cs/Documents/Python/Codes/K/javaman.py'

set whichwrap+=<>[]

set printoptions=paper:letter

" to run commands under cursor
vmap <silent> <leader>e :exe '!'.join(split(@", "\n"),';')<cr>


" ~/bin/editors/vim/alphaOptionsRejected
