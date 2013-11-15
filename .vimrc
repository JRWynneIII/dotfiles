execute pathogen#infect()
syntax on
filetype plugin indent on
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
set t_Co=256
set backspace=indent,eol,start
colors molokai
set number
"airline stuff
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" let g:airline_symbols = {}
" let g:airline_left_sep = '⮀'
" let g:airline_left_alt_sep = '⮁'
" let g:airline_right_sep = '⮂'
" let g:airline_right_alt_sep = '⮃'
" let g:airline_symbols.branch = '⭠'
" let g:airline_symbols.readonly = '⭤'
" let g:airline_symbols.linenr = '⭡'
"
" " let g:airline_theme='powerlineish'
" " let g:airline_theme='dark'
" " let g:airline_theme='base16'
 let g:airline_theme='badwolf'
"let g:airline_theme='molokai'
" " let g:airline_theme='light'
"let g:airline_theme='solarized'
" " let g:airline_theme='simple'
