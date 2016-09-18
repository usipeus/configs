" theme
syntax enable
set background=dark
colorscheme molokai
" colorscheme pencil

set wrap
set tabstop=8
set shiftwidth=8
set softtabstop=8
set noexpandtab
set nonumber
set autoindent!
set nocindent!
set nosmartindent!
syn enable
filetype plugin indent on

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
set splitbelow
set splitright
" better buffers
:nnoremap <F5> :buffers<CR>:buffer<Space>
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>
