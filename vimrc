" Use Vim mode
set nocompatible

set enc=utf-8

" Load any possible pre-configs (disabling YCM for example)
if filereadable(expand("~/.vimrc.before"))
    source ~/.vimrc.before
endif

" Load plugins
if filereadable(expand("~/.vim/plugs.vim"))
    source ~/.vim/plugs.vim
endif

filetype plugin indent on

" Dark terminals FTW
set background=dark

" Always show the status line
set laststatus=2

" Set up default formatting options
set nowrap
set smartindent
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Smarter backspace
set backspace=indent,eol,start

" Create quick controls for cycling buffers
map <C-n> :bn<CR>
map <c-m> :bp<CR>

" Allow switching off a modified buffer
set hidden

" Configure search options
set incsearch
set hlsearch
set ignorecase
set smartcase

" Map to remove search highlights
map <silent> <C-h> :nohl<CR>

" Show highlight tabs and trailing spaces
set list listchars=tab:\ \ ,trail:·

" Now load plugin and local settings
if filereadable(expand('~/.vim/settings.vim'))
    source ~/.vim/settings.vim
endif
