" leader
let mapleader=" "

" the 'set' configs
set number
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu


" searching options
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

" codes about remapping (individual file)
source $XDG_CONFIG_HOME/nvim/remap.vim

call plug#begin('$XDG_CONFIG_HOME/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ajmwagar/vim-deus'
call plug#end()

" colour scheme
set t_Co=256
set termguicolors

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark    " Setting dark mode
colorscheme deus
let g:deus_termcolors=256
