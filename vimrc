set nocompatible
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

filetype plugin indent on

set t_Co=256
set background=dark
colorscheme jellybeans
set number

set mouse=a         "enable terminal mouse support
set selectmode=""   "turn off select mode - selections enter visual mode

syntax on

"indent settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

set showcmd             " Show (partial) command in status line.
set ignorecase          " Do case insensitive matching
set smartcase           " Do smart case matching
set incsearch           " Incremental search
set hlsearch            " hilight searches by default
set hidden              " Hide buffers when they are abandoned
set cursorline          " Highlight current line

set winwidth=79

set switchbuf=useopen
set laststatus=2
set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

set backup
set backupdir-=.
set directory-=.
set wildmode=longest,list
set wildmenu
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
let mapleader=","

nnoremap <CR> :nohlsearch<CR>

"keep visual selection when indenting
vnoremap > >gv 
vnoremap < <gv  

"copy/paste from system clipboard
map <leader>y "*y
map <leader>p "*p

" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

"tab autocompletion
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

if has('gui_running')
    set guioptions-=T
    set guioptions+=c
    if has("gui_gtk2")
        set guifont=Inconsolata\ Medium\ 15
    elseif has("gui_win32")
        set guifont=Consolas:h13:cANSI
    elseif has("gui_macvim") 
        set guifont=Inconsolata:h15
    endif
endif
