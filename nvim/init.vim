" leader
let mapleader=" "

" the 'set' configs
set number
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu
set filetype
" especially for COC.NVIM
set updatetime=100
set signcolumn=yes

" indentations
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" searching options
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

" codes about mapping

let mapleader=" "

" access vimrc anywhere
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
" splitting and window management
noremap su :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap se :set splitbelow<CR>:split<CR>
noremap sn :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap si :set splitright<CR>:vsplit<CR>

noremap <LEADER>w <C-w>w
noremap <LEADER>u <C-w>k
noremap <LEADER>e <C-w>j
noremap <LEADER>n <C-w>h
noremap <LEADER>i <C-w>l

" tab management
noremap tu :tabe<CR>
noremap tn :-tabnext<CR>
noremap ti :+tabnext<CR>
noremap tmn :-tabmove<CR>
noremap tmi :+tabmove<CR>

" disable the s key
noremap s <nop>

" fast execute
noremap X :!

call plug#begin('$XDG_CONFIG_HOME/nvim/plugged')
" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Colour scheme
Plug 'ajmwagar/vim-deus'
Plug 'nordtheme/vim'
" Rainbow Colour Parentheses
Plug 'frazrepo/vim-rainbow'
" THE COC.NVIM
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" vimtex
Plug 'lervag/vimtex'
" typst.vim
Plug 'kaarmu/typst.vim'
" Snippets
Plug 'sirver/ultisnips'
" Tex Conceal
Plug 'KeitaNakamura/tex-conceal.vim'

call plug#end()

" colour scheme
set t_Co=256
set termguicolors

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

colorscheme nord
" colorscheme deus
" let g:deus_termcolors=256


" vim-rainbow
let g:rainbow_active=1

" COC.NVIM configurations
" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Applying codeAction to the selected region.
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Open coc-explorer
nmap tt :CocCommand explorer<CR>

" coc extensions
let g:coc_global_extensions = [
			\ 'coc-json', 
			\ 'coc-marketplace',
			\ 'coc-tsserver',
			\ 'coc-explorer',
			\ 'coc-vimlsp',
			\ 'coc-python',
			\ 'coc-prettier',
			\ 'coc-java',
			\ 'coc-vimtex',
			\ 'coc-pairs']


" coc-vimtex
let g:tex_flavor = 'latex'
let g:vimtex_view_method='skim'
let g:vimtex_quickfix_mode=0
" python env
let g:python3_host_prog = '/usr/bin/python3'

" Snippets!
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" Conceal
set conceallevel=1
let g:tex_conceal='abdmg'
hi Conceal ctermbg=none
