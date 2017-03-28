"Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl --create-dirs -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

" Start vim-plug
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'farmergreg/vim-lastplace'
Plug 'junegunn/vim-easy-align'
Plug 'ctrlpvim/ctrlp.vim'

" End vim-plug
call plug#end()

filetype plugin indent on

" Map vim-easy-align to ga
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Dark terminals FTW
set background=dark

" Build custom alignment rules
let g:easy_align_delimiters = {}

" Alignment for c-style variable declarations
let g:easy_align_delimiters['d'] = {
\    'pattern': ' \**\(\S\+\s*[;=]\)\@=',
\    'left_margin': 0,
\    'right_margin': 0
\}

" Map to align C variable declarations by both identifier and = when visually
" selected
xmap <leader>ad gadgvga=

" Make sure Jellybeans doesn't change the terminal color
let g:jellybeans_overrides = {
\    'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
\}

" Sweet color scheme
colorscheme jellybeans

set laststatus=2
set enc=utf-8

" Configure airline
let g:airline_theme='murmur'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#whitespace#enabled = 1

" User powerline for fancy status lines. Requires a powerline font installed
let g:airline_powerline_fonts = 1

set nowrap
set smartindent
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set nocompatible
set backspace=indent,eol,start

map <C-n> :bn<CR>
map <c-m> :bp<CR>

set hidden

