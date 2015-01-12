" :set listchars=eol:$,tab:>_,trail:~,extends:>,precedes:<
:set listchars=eol:¶,tab:»·,trail:~,extends:>
:set list
:set tabstop=4
:set shiftwidth=4
:set number
:set colorcolumn=80
:set background=dark
:color molokai
:set gfn=Anonymous\ Pro\ 12
:set wrap!
:set autoindent!
:set nocindent!
:set nosmartindent!
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

" Set default size
set columns=85
set lines=35
