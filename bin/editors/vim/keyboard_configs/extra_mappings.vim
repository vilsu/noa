" to create a new file which does not exist before
nmap <C-w>c :e <cfile><CR>

 " move fast between current buffers
 nmap <special> <C-Up> :bnext<CR>
 nmap <special> <C-Down> :bprevious<CR>

 " Buffer navigation
 nmap gn :bnext<cr>
 nmap gp :bprev<cr>

 " Quickfix navigation
 nmap gN :cnext<cr>
 nmap gP :cprev<cr>


 " Toggle fold under cursor
 nnoremap <space> za



 " Create fold from visually selected text
 vnoremap <space> zf

 " Completion shortcuts
 inoremap <c-n>     <c-x><c-n>
 inoremap <c-f>     <c-x><c-f>
 inoremap <c-space> <c-x><c-o>

" Emacs like navigation keys
 inoremap <expr> <down>     pumvisible() ? "\<c-n>" : "\<down>"
 inoremap <expr> <up>       pumvisible() ? "\<c-p>" : "\<up>"

vnoremap <f5> :!python<CR>

" <f2> goes to the next file
map <f2> :next<CR><f1>
" <f3> goes to the previous file
map <f3> :previous<CR><f1>


" disable Q: ex-mode - do not like ex -mode
:map Q <Nop>
