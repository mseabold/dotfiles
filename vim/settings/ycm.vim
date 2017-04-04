" Silently load extra conf
let g:ycm_confirm_extra_conf = 0

" Accept large files
let g:ycm_disable_for_files_larger_than_kb = 10000

" Set up key mappings to play nice with supertab/ultisnips
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" Close the preview when we are done with it
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
