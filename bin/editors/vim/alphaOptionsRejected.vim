"set showcmd

"set mouse=a           " Enable the mouse for all modes

"let Tex_ViewRuleComplete_pdf = '/usr/bin/open -a Skim $*.pdf' 

" EX mode "{{{
" Don't use Ex mode, use Q for formatting
"  map Q gq
"}}}
" Visual mode"{{{
" Duplicate a selection
" Visual mode: D
"vmap D y'>p
"}}}

" the default manual program is man
" you can change it by changing keywordprg
" set keywordprg=man

"set wrap       " Display long lines as wrapped
"set linebreak  " Break lines at a sensible place

"let &sbr = nr2char(8618).' '  " Show ↪ at the beginning of wrapped lines

" to have extra ESC
imap jj <Esc>

" better to have extension, since this is challenging to maintain
au! BufNewFile,BufRead alpha* set filetype=vim

"source ~/bin/editors/vim/spellCheck.vim


" Compability
"if exists("syntax_on")
"  syntax reset
"endif
