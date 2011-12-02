" Basics
set nocompatible
set noesckeys
set complete=.

" General
filetype plugin indent on
set autochdir
set clipboard+=unnamed
set noerrorbells
set backspace=2
set autoread
set encoding=utf-8
set modelines=0
set backupdir=/var/tmp/vim
set directory=/var/tmp/vim
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

" Folding
set nofoldenable
set foldmarker={,}
set foldmethod=marker
set foldlevel=100

" GUI Settings
set guifont="Droid Sans Mono 10"
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
set mouse=a
set ttymouse=xterm2

" Syntax highlihgting
syntax on
"autocmd BufEnter * :syntax sync fromstart

" Key mappings
let mapleader = ","

" Remove trailing whitespace when ,w is pressed
nnoremap <leader>w :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

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

" Merge Kendo scripts
autocmd BufWritePost ~/github/kendo/src/chart/*.js silent !cd ~/github/kendo && node build/kendo-scripts.js > /dev/null
