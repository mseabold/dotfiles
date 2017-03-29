" Map vim-easy-align to ga
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

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
