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
