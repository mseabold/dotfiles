" Load some settings that are global which some modules may depend to be
" present before they configure themselves
let g:rootmarkers = ['.root', '.git', '.p4.conf']

" Load all available settings
for fpath in split(globpath('~/.vim/settings/', '*.vim'), '\n')
    exe 'source' fpath
endfor

" Now load any local settings
if filereadable(expand('~/.local_settings.vim')) 
    source ~/.local_settings.vim
endif
