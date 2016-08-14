" dark solarized
syntax enable
set background=dark
colorscheme solarized

set wrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set nonumber
set colorcolumn=80
set autoindent!
set nocindent!
set nosmartindent!
syn enable
filetype plugin indent on
set encoding=utf-8

" keybindings
nnoremap ; :
nnoremap : ;
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
