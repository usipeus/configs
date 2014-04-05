:set tabstop=4
:set number
:set colorcolumn=80
:set background=dark
:color molokai
:set gfn=Inconsolata\ Medium\ 12
:set wrap!
:set ai!
:syn enable
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

" powerline stuff
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Set default size
set columns=85 lines=50
