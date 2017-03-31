set nowrap
set smartindent
set autoindent
set expandtab
set tabstop=3
set softtabstop=3
set shiftwidth=3
set formatprg=
    \IFS='';t='';read\ t;
    \p=$(echo\ \"$t\"\|sed\ 's;^\\(\ \*/\\\*\ \*\\)\\?.\*;\\1;');
    \while\ read\ i;do\ t=\"$t\"$'\\n'\"$i\";done;
    \t=$(echo\ \"$t\"\|boxes\ -r\|boxes\ -d\ c-cmt\|sed\ \"s;^\ \*/\\\*\ \*;$p;\");
    \echo\ \"$t\"\|par\ w74\ s2\ g1\ p$(echo\ -n\ \"$p\"\|wc\ -c)

set equalprg=astyle\ --mode=c\ --style=ansi\ --indent=spaces=3\ --indent-switches\ --align-pointer=name "\ --break-elseifs
" NOTE: --break-elseifs currently breaks case keywords from their tags

function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction 

vnoremap <silent> ac <Esc>:<C-U>let _s=@/<CR>$?^\s*\/\*<CR>?^\s*\([^\/ \t]\\|\/[^\*]\\|$\)?+1<CR>^mk/\*\/\s*$<CR>/\(\*\/\s*\)\@<!$/-1<CR>$ml:<C-U>let @/=_s<CR>`kV`l
omap <silent> ac :normal vac<CR>
nmap <silent> <F12> gqac
vmap <silent> <F12> gq
imap <silent> <F12> <Esc>mjgqac`ja

" F-11 formats the document using the command given by $equalprg. This
" mapping works by doing the following:
"     :let _s=@/<CR>           # Save the last search pattern.
"     :normal! mkHmlgg=G<CR>   # Format the file using equalprg.
"                              #    :normal! - execute normal-mode commands without mappings. 
"                              #    mk - set mark `k to current position
"                              #    H  - move cursor to first line in window
"                              #    ml - set mark `l to the beginning of first line in window
"                              #    gg - move to the beginning of the buffer
"                              #    =G - format (using equalprg) to the end of the buffer
"     :%g/^\/\*/> <CR>         # Indent all comment blocks in the global scope.
"                              #    %g / ^\/\* / >  -- Indent every line beginning with '/*'
"     gg                       # Back to the beginning of the file.
"     /^\(\s*\/\*\)\@!/-1 <CR> # Find the last consecutive line that begins with '{spaces}/*'.
"     Vgg<                     # Highlight this first comment block and undo the indentation.
"     `lzt`k                   # Move the window back to mark `l, and cursor to `k.
"     q/d2k:q <CR>             # Clean the search history of our searches.
"                              #   q/   - open search history for editting
"                              #   d2k  - delete up two lines
"                              #   :q   = close search history
"     :let @/=_s <CR>          # Restore the last search pattern.
nmap <silent> <F11> :<C-U>let _s=@/<CR>:<C-U>normal! mkHmlgg=G<CR>:<C-U>%g/^\/\*/><CR>gg/^\(\s*\/\*\)\@!/-1<CR>Vgg<`lzt`kq/d2k:q<CR>:<C-U>let @/=_s<CR>

imap <silent> <F11> <Esc><F11>a
vmap <silent> <F11> =gv:g/^\/\*/><CR>

" Support searching for function headers that have curly-braces on the same
" line.
"map <silent> [[ :call search('{','b')<CR>w99[{
"map <silent> ][ :call search('}')<CR>b99]}
"map <silent> ]] j0[[%:call search('{')<CR>
"map <silent> [] k$][%:call search('}','b')<CR>

