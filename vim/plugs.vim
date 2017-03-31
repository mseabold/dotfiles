" Check if we want to enable YouCompleteMe
let s:enable_ycm = get(g:, 'enable_ycm', 1)

" Note that .plug files are in viml
au BufRead,BufNewFile *.plug set filetype=vim

" Start vim-plug
call plug#begin('~/.vim/plugged')

" TODO Make this more readable by splitting into groups
" Load all the default plugins
source ~/.vim/plugs/default.plug

" Load YCM if requested
if s:enable_ycm
    source ~/.vim/plugs/ycm.plug
endif

" Allow user to specify plugins without the need to fork
if filereadable(expand("~/.local_plugs.vim"))
    source ~/.local_plugs.vim
endif

call plug#end()
