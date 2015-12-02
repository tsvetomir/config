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
Plugin 'gmarik/vundle'
Plugin 'rbgrouleff/bclose.vim'
Plugin 'lukaszb/vim-web-indent'
Plugin 'mutewinter/nginx.vim'
Plugin 'msanders/snipmate.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'sudar/vim-arduino-syntax'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'rust-lang/rust.vim'

" vim-scripts repos
Plugin 'Obvious-Mode'
Plugin 'ZoomWin'
Plugin 'Nazca'

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

" GUI Settings
set guifont=Terminess\ Powerline\ 14
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
hi javaScriptBrowserObjects       guifg=#DBB6D2 ctermfg=182   gui=italic
hi javaScriptDOMObjects           guifg=#DBB6D2 gui=BOLD
hi javaScriptDOMMethods           guifg=#D4FA9B ctermfg=192
hi link javaScriptDOMProperties   Keyword
hi javaScriptAjaxObjects          guifg=#5d91d3 gui=underline
hi javaScriptAjaxMethods          guifg=#6699CC ctermfg=68
hi javaScriptAjaxProperties       guifg=#FF9494 ctermfg=210
hi javaScriptFuncName             guifg=#B5E4F7 ctermfg=153
hi javaScriptHtmlElemProperties   guifg=#FF9494 ctermfg=210
hi javaScriptEventListenerKeyword guifg=#6699CC ctermfg=68

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

set wildignore+=*/dist/*,*/node_modules/*,*.min.js
let g:ctrlp_user_command = 'find %s -type f -not -path "*/dist/*" -not -path "*/node_modules/*" -not -path "*/dist/*"'

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

" VIM Airline
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
      let g:airline_symbols = {}
  endif
let g:airline_symbols.space = "\ua0"

" Associate *.cshtml with html filetype
au BufRead,BufNewFile *.cshtml set filetype=html


