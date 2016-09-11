" vundle things
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('/home/ylli2/Downloads/source/configs/vundle-plugins/')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-markdown'

Plugin 'nelstrom/vim-markdown-folding'

Plugin 'beloglazov/vim-online-thesaurus'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
:PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set spell spelllang=en_us
" :set listchars=eol:$,tab:>_,trail:~,extends:>,precedes:<
:set tabstop=8
:set shiftwidth=8
:set noexpandtab
:set softtabstop=8
:set nonumber
:set colorcolumn=80
:set background=dark
:color molokai
:set gfn=mononoki\ 13
:set nowrap!
:set autoindent!
:set nocindent!
:set nosmartindent!
:syn enable
:set list
:set listchars=tab:»·,trail:~,extends:>,precedes:<
filetype plugin indent on
set encoding=utf-8

" disable the arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
" set the arrow keys to switch splits
nnoremap <Right> <C-w>l
nnoremap <Left> <C-w>h
nnoremap <Up> <C-w>k
nnoremap <Down> <C-w>j
" set the colon bind to semicolon and vice versa
nnoremap ; :
nnoremap : ;
