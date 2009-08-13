set nocompatible  " use only Vim extensions: needs to be at 1st line


" ~/bin/editors/vim/describtion
" ~/bin/editors/vim/bugs
" ~/bin/editors/vim/alphaOptions.vim
" ~/bin/editors/vim/sources
source ~/bin/editors/vim/plugins.vim
source ~/bin/editors/vim/extra_apps.vim

" DEFAULT SETTINGS ON by default
" Display the current mode in the last line: tell when in INSERT mode
source ~/bin/editors/vim/automaticDefaultSettings.vim

source ~/bin/editors/vim/highlightings.vim

"" Snippets are activated by Shift+Tab
let g:snippetsEmu_key = "<S-Tab>"

 set foldmethod=marker "folds by indentation,syntax, marker, hanual, indent, http://stackoverflow.com/questions/758928/how-can-you-control-folds-by-an-external-file-in-vim/759060#759060

set cursorline
set smartindent
set tabstop=4

set number

syntax on

set textwidth=78
set foldcolumn=5

source ~/bin/editors/vim/keyboard_configs/dvorak.vim
source ~/bin/editors/vim/keyboard_configs/extra_mappings.vim

source ~/bin/editors/vim/code-beautifier.vim

" If this is off, it is a security threat for confidental files.
set noswapfile 

" Buffer control
set switchbuf=usetab

" I do not want equal sized windows
set noequalalways

" to show 3 lines of context when scrolling
set scrolloff=3

" to load file automatically if it has been changed outside
set autoread

 filetype plugin indent on
"           |        |-- automatic indentation as you type
"           |----------- to run plugin at a specific action
"        

colorscheme delek

 
 set cpoptions+=>  " Items in register separated by newline
 set history=1000  " Size of command/search history
 set hidden        " Allow change buffers without saving

 "h Files, Backup -----------------------------------------------------------{{{

 set viminfo='1000,<1000,s100,h
 "           |     |     |    |
 "           |     |     |    +-- Don't restore hlsearch on startup
 "           |     |     +------- Exclude registers greater than N Kb
 "           |     +------------- Keep N lines for each register
 "           +------------------- Keep marks for N files

 set modeline modelines=5  " Use modelines within first/last 5 lines

 " Enable file backups
set backupdir=~/.vimBackup//
set directory=/tmp//

 "}}}
 
 " Text-Formatting, Identing, Tabbing --------------------------------------{{{

 set autoindent     " Use indent from previous line
 set smarttab       " Smart handling of the tab key
 set expandtab      " Use spaces for tabs
 set shiftround     " Round indent to multiple of shiftwidth
 set shiftwidth=4   " Number of spaces for each indent
 set softtabstop=4  " Number of spaces for tab key

 set formatoptions-=t  " Don't auto-wrap text
 set formatoptions+=corqn
 "                  |||||
 "                  ||||+-- Recognize numbered lists
 "                  |||+--- Allow formatting of comments with 'gq'
 "                  ||+---- Insert comment leader after <Enter>
 "                  |+----- Insert comment leader after o/O
 "                  +------ Auto-wrap comments

 set backspace=indent,eol,start  " Allow backspacing over these: more powerful backspacing

 " }}}
 
 " Searching, Substituting
 set incsearch    " Show search matches as you type
 set ignorecase   " Ignore case when searching
 set smartcase    " Override 'ignorecase' when needed
 set hlsearch     " Highlight search results
 set showmatch    " Show matching brackets {} () []
 set matchtime=2  " (for only .2 seconds)
 set magic
 set nowrapscan   " do not go to top as being at the bottom
 
 " Menus, Completion -------------------------------------------------------{{{
 
 " better case handling for insert mode completion
 " but turn it off immediately, in case reloading
 set infercase  

 set completeopt=longest,menu,menuone
 "               |       |    |
 "               |       |    +-- Show popup even with one match
 "               |       +------- Use popup menu with completions
 "               +--------------- Insert longest completion match
 
 set wildmenu  " Enable wildmenu for completion
 set wildmode=longest:full,list:full
 "            |            |
 "            |            +-- List matches, complete first match
 "            +--------------- Complete longest prefix, use wildmenu
 " }}} 
 
 " Windows, Tabs -----------------------------------------------------------{{{
 
 set mousehide         " Hide mouse while typing
 set mousemodel=popup  " Use popup menu for right mouse button
 
 set splitright  " When splitting vertically, split to the right
 set splitbelow  " When splitting horizontally, split below
 
 set scrolloff=5      " Lines visible above/below cursor when scrolling
 set sidescrolloff=5  " Lines visible to the left/right of cursor when scrolling
 
 set tabpagemax=128  " Maximum number of tabs open
 
 " }}} 
 
 " Display, Messages, Terminal ---------------------------------------------{{{
 
 set numberwidth=1     " Make line number column as narrow as possible
 set ttyfast           " Indicates a fast terminal connection
 set noerrorbells      " Error bells are annoying
 set title             " Set descriptive window/terminal title
 set report=0          " Always report the number of lines changed
 set display=lastline  " Show as much of the last line as possible
 
 set shortmess=aTItoO
 "             ||||||
 "             |||||+- Message for reading file overwrites previous
 "             ||||+-- Don't prompt to overwrite file
 "             |||+--- Truncate file at start if too long
 "             ||+---- Disable intro message
 "             |+----- Truncate messages in the middle if too long
 "             +------ Shortcut for various status line options
 " }}} 

 " Statusline, Messages
 set ruler         " Display info on current position
 set laststatus=2  " Always show status line

" ~/bin/editors/vim/.docs/statusline.vim
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ %p%%

""""" K shortcut
" We use Perl's internal program
" This seems to be buggy when used with Vim's manuals
au BufReadPost *.pl set keywordprg=perldoc\ -f

"" Comment this out when you use Java's manuals
" We do not use Vim's external program, but instead, Vim's internal command
au BufReadPost *.vim  map K :exe ":help ".expand("<cword>")<CR>
au BufReadPost .vimrc map K :exe ":help ".expand("<cword>")<CR>

source ~/bin/editors/vim/markdown.vim

" a temporary bug fix for a syntax highlighting problem
"au BufNewFile,BufRead *.markdown        set ft=


" LaTeX

let g:tex_flavor='latex'
set grepprg=grep\ -nH\ $*
 
"let g:Tex_Folding=0 "I don't like folding.
set iskeyword+=:



