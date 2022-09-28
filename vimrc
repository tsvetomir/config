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
Plugin 'gmarik/Vundle.vim'
Plugin 'rbgrouleff/bclose.vim'
Plugin 'lukaszb/vim-web-indent'
Plugin 'mutewinter/nginx.vim'
Plugin 'msanders/snipmate.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'plasticboy/vim-markdown'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'sudar/vim-arduino-syntax'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'rust-lang/rust.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'easymotion/vim-easymotion'
" Plugin 'junegunn/limelight.vim'

Plugin 'Obvious-Mode'
Plugin 'Terminus'
Plugin 'ZoomWin'
Plugin 'Nazca'

" JavaScript
Plugin 'jason0x43/vim-js-indent'
Plugin 'othree/yajs.vim'
Plugin 'mxw/vim-jsx'

" TypeScript
Plugin 'leafgarland/typescript-vim'
Plugin 'quramy/vim-js-pretty-template'

call vundle#end()

" General
filetype plugin indent on
set clipboard+=unnamed
set noerrorbells
set backspace=2
set autoread
set encoding=utf-8
set modelines=0
set virtualedit=block
set backupdir=~/.vim/backup
set undodir=~/.vim/undodir
set undofile " Maintain undo history between sessions
set directory=/tmp
set nowritebackup
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
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab

" autocmd Filetype typescript setlocal tabstop=2 shiftwidth=2 expandtab

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
" autocmd FileType markdown Limelight 0.8

" Folding
set nofoldenable
set foldmarker={,}
set foldmethod=marker
set foldlevel=100

" GUI Settings
set guifont=Monaco:h16
set guioptions-=m
set guioptions-=t
set guioptions-=T
set guioptions-=r
set guioptions-=l
set guioptions-=L
map <silent> <F11>
            \   :call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")<CR>
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

set wildignore+=*/node_modules/*
let g:ctrlp_user_command = 'find %s -type f -not -path "*/node_modules/*" -not -path "*/.git/*" -not -path "*/dist/*"'

" Retain cursor position on Esc
inoremap <silent> <Esc> <Esc>`^
vmap y y`]

" Use CTRL-S for saving, also in Insert mode
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

" Add F2 for saving, also in Insert mode
" Remap iTerm2 to send 0x113 on Cmd+S
noremap <F2> :update<CR>
vnoremap <F2> <C-C>:update<CR>
inoremap <F2> <C-O>:update<CR>

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

" VIM Airline
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
      let g:airline_symbols = {}
  endif
let g:airline_symbols.space = "\ua0"

" Associate *.cshtml with html filetype
au BufRead,BufNewFile *.cshtml set filetype=html

" Easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" Mardown
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_fenced_languages = ['ts=typescript', 'ts-no-run=typescript', 'html-no-run=html']

