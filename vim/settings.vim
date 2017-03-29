" Load all available settings
for fpath in split(globpath('~/.vim/settings/', '*.vim'), '\n')
    exe 'source' fpath
endfor

" Now load any local settings
if filereadable(expand('~/.local_settings.vim')) 
    source ~/.local_settings.vim
endif
