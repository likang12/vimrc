
" vim-airline/vim-airline
" 出现错误make 'fenc' empty to override, 执行set fileencoding=utf-8
" 编码错误增加字体
set t_Co=256
set laststatus=2
set lazyredraw
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme='default'
" 使用powerline打过补丁的字体
let g:airline_powerline_fonts=1
" 关闭空白符检测
"let g:airline#extensions#whitespace#enabled=1

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = '℅'            "列标志，默认标志乱码。
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty = '⚡'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

