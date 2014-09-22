" Basics
set nocompatible
filetype off
set noesckeys
set complete=.
set timeoutlen=200

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" GitHub repos
Bundle 'gmarik/vundle'
Bundle 'rbgrouleff/bclose.vim'
Bundle 'mutewinter/nginx.vim'
Bundle 'msanders/snipmate.vim'
Bundle 'nanotech/jellybeans.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-fugitive'

" vim-scripts repos
Bundle 'Obvious-Mode'
Bundle 'Nazca'

call vundle#end()

" General
filetype plugin indent on
set clipboard+=unnamed
set noerrorbells
set backspace=2
set autoread
set encoding=utf-8
set modelines=0
set backupdir=~/.vim/backup
set directory=/tmp
set hidden

" UI
set laststatus=2
set lazyredraw
set ruler
set scrolloff=1
set startofline
set showmatch
set list listchars=tab:>-,trail:.

" Text Formatting
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab

" Searching
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" Spelling
autocmd FileType markdown setlocal spell spelllang=en_us

" Folding
set nofoldenable
set foldmarker={,}
set foldmethod=marker
set foldlevel=100

set background=dark
colo nazca

" Terminal settings
set t_Co=256
set mouse=nv
set ttymouse=xterm2

" Syntax highlihgting
syntax on
"autocmd BufEnter * :syntax sync fromstart

" Key mappings
let mapleader = ","

" Remove trailing whitespace when ,w is pressed
nnoremap <leader>w :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Map CtrlP to Ctrl+T
let g:ctrlp_map = '<c-t>'
let g:ctrlp_cmd = 'CtrlP'

nnoremap <leader>b :CtrlPBuffer<CR>

" Retain cursor position on Esc
inoremap <silent> <Esc> <Esc>`^
vmap y y`]

" Use CTRL-S for saving, also in Insert mode
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

" Ctrl+R replaces selected text
vnoremap <C-r> "hy:.,$s/<C-r>h//c<left><left>

" Refresh syntax highlighting on F12
noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>

" Syntax on/off on F5/F6
noremap <F5> <Esc>:syntax off<CR>
inoremap <F5> <C-o>:syntax off<CR>
noremap <F6> <Esc>:syntax on<CR>
inoremap <F6> <C-o>:syntax on<CR>

" Disable indentation after pressing Ctrl+]
set pastetoggle=<C-]>

" Remap CTRL-p and CTRL-P to paste last yanked text
noremap <C-p> "0p
noremap <C-P> "0P

" Disable middle click paste
:map <MiddleMouse> <Nop>
:imap <MiddleMouse> <Nop>

