set nocompatible

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype off
filetype plugin indent on

syntax on
if !exists("autocommands_loaded")
  let autocommands_loaded = 1
  au filetypedetect BufRead,BufNewFile *.html.erb ru syntax/html/html5.vim
endif

"use CUA keystrokes for clipboard: CTRL-X, CTRL-C, CTRL-V and CTRL-z
source $VIMRUNTIME/mswin.vim


"indent settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" Setup word wrap
set nowrap
set linebreak

set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ignorecase          " Do case insensitive matching
set smartcase           " Do smart case matching
set incsearch           " Incremental search
set hlsearch            " hilight searches by default
set hidden              " Hide buffers when they are abandoned

nnoremap <silent> <C-l> :nohlsearch<CR><C-l>
vnoremap > >gv
vnoremap < <gv  
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

let mapleader = ','

"NERDTree Settings
nmap <leader>n :NERDTreeToggle<CR>
let NERDChristmasTree = 1
let NERDTreeHighlightCursorline = 1
let NERDTreeShowHidden = 1
let NERDTreeMapActivateNode='<CR>'
let NERDTreeIgnore=['\.git']
