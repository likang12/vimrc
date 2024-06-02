
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'

" 默认状态不打开,通过手动开关打开
let g:ale_enabled = 0
" 显示状态栏
" let g:ale_sign_column_always = 1
" 显示错误警告高亮
let g:ale_set_highlights = 1

" enable/disable ale
nnoremap <leader>al :ALEToggle <CR>
nnoremap <leader>an :ALENext <CR>
nnoremap <leader>ap :ALEPrevious <CR>
