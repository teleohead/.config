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

" codes about mapping

let mapleader=" "

" edit vimrc from anywhere
noremap <LEADER>rc :e $XDG_CONFIG_HOME/nvim/init.vim<CR>
" save & quit
noremap S :w<CR>
noremap Q :q<CR>
" cursor movement
noremap u k
noremap n h
noremap e j
noremap i l
" fast navigation
noremap U 5k
noremap E 5j
noremap N 5h
noremap I 5l
noremap <C-n> 0
noremap <C-i> $
" insert key
noremap k i
noremap K I
" quick source vimrc
noremap R :source $MYVIMRC<CR>
" search
map <LEADER><CR> :nohlsearch<CR>
noremap = nzz
noremap - Nzz
" undo
noremap l u
" ; replaces :
noremap ; :

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
