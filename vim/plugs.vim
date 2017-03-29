" Check if we want to enable YouCompleteMe
let s:enable_ycm = get(g:, 'enable_ycm', 1)

" Start vim-plug
call plug#begin('~/.vim/plugged')

" TODO Make this more readable by splitting into groups
" Load all the default plugins
source ~/.vim/plugs/default.plug

" Load YCM if requested
if s:enable_ycm
    source ~/.vim/plugs/ycm.plug
endif

call plug#end()
