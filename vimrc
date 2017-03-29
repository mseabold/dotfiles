" Use Vim mode
set nocompatible

"Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl --create-dirs -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

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

set laststatus=2
set enc=utf-8

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

" Now load plugin and local settings
if filereadable(expand('~/.vim/settings.vim'))
    source ~/.vim/settings.vim
endif
