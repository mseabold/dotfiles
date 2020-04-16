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

" Finally, if the current project provides settings
" apply them as the highest priority
try
    let rootpath = projectroot#get()
    if len(rootpath) > 0
        let settingspath = rootpath . '/.project_settings.vim'
        if filereadable(settingspath)
            exec 'source' settingspath
        endif
    endif
catch
endtry
