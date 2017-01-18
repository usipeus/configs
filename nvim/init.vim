"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/ylli2/.config/nvim/dein//repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/ylli2/.config/nvim/dein/')
  call dein#begin('/home/ylli2/.config/nvim/dein/')

  " Let dein manage dein
  " Required:
  call dein#add('/home/ylli2/.config/nvim/dein//repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('vim-scripts/Smart-Tabs')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

set list
set list listchars=tab:»·,trail:·

" theme
set background=dark
colorscheme molokai
syntax enable
" colorscheme pencil

set noet ci pi sts=0 sw=4 ts=4
set wrap
set nonumber
set cindent!
set cinoptions=(0,u0,U0
set noautoindent!
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

