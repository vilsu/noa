" to have 1s spell-check time
" If you know Finnish, you need this.
" NB Vimchant plugin
set updatetime=1000 
" to prevent Vim load plugin automatically
let g:loaded_vimchant = 1

highlight SpellBad cterm=underline ctermbg=black ctermfg=Red gui=undercurl guisp=Red

let g:vimchant_spellcheck_lang = 'fi'

# no spell check for comments
let g:tex_comment_nospell= 1
