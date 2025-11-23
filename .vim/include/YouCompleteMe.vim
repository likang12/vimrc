
" YouCompleteMe
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap gt :YcmCompleter GoToDefinitionElseDeclaration<CR>

nnoremap <leader>y :let g:ycm_auto_trigger=0<CR>                " turn off YCM 补全
nnoremap <leader>Y :let g:ycm_auto_trigger=1<CR>                "turn on YCM 补全

let g:ycm_auto_trigger = 1
"disable ycm 语法检查
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0

" set completeopt=longest,menu
let g:ycm_server_python_interpreter='/usr/bin/python3'
let g:ycm_global_ycm_extra_conf='$HOME/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_complete_in_strings=1
" highlight PMenu ctermfg=0 ctermbg=242 guifg=black guibg=darkgrey
let g:ycm_semantic_triggers =  {
                        \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
                        \ 'cs,lua,javascript': ['re!\w{2}'],
                        \ }

set completeopt-=preview


" sudo apt install build-essential cmake python-dev python3-dev clang
" ./install.py --clang-completer
