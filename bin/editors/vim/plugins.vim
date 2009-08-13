" Plugins which I use
"  - QuickBuf: To switch between buffers in current session by mb
"       NB C-O/C-I are for different purpose
"  - Optional: Vim-Latex
 
 " IMPORTANT: grep will sometimes skip displaying the file name if you
 " search in a singe file. This will confuse Latex-Suite. Set your grep
 " program to always generate a file-name.
 set grepprg=grep\ -nH\ $*
 
 " OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
 " 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
 " The following changes the default filetype back to 'tex':
 let g:tex_flavor='latex'



"" T in Taglist
""""""""""""""""""""""""""""""""""""""""""""""""""
" to eliminate the effect of line 1560 in taglist.vim 

"silent nnoremap <buffer> <silent> t

" to eliminate the effect of the line 1560 in taglist.vim 
if v:version >= 700
         silent nnoremap <buffer> <silent> t
                     \  
         silent nnoremap <buffer> <silent> <C-t>
                     \  
         endif



" ACK integration

" Use Ack instead of Grep when available
" :grep NB
if executable("ack")
    set grepprg=ack\ -a\ --nogroup
    "set grepprg=ack\ -H\ --nogroup\ --nocolor
endif

 " CODING 
 " Not yet working
 vnoremap <tab-a>  y:exe '!'.join(split(@", "\n"),';')<cr>


" QuickBuf -plugin mappings
 let g:qb_hotkey = "mb"

 " ~/bin/editors/vim/plugins-dev.vim
