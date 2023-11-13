
" vim-better-whitespace
" 开启行末空格高亮
let g:better_whitespace_enabled = 1
" 行末空格高亮颜色
let g:better_whitespace_ctermcolor = 'red'
"let g:strip_whitespace_on_save = 1

"保存时删除文件内所有行末空格。
"关闭保存文件时删除行末空格的询问。
"let g:strip_whitespace_confirm = 0
"取消所有默认快捷键。
"let g:better_whitespace_operator = ''
""let g:better_whitespace_blacklist = []              "清空黑名单，对所有文件有效。
"markdown需要指定才能生效，即使没加入黑名单。
":autocmd FileType markdown EnableWhitespace
":autocmd FileType markdown EnableStripWhitespaceOnSave
"
"Normal模式下高亮当前行空白字符。开启会使响应变慢。
"let g:current_line_whitespace_disabled_hard = 0
"let g:current_line_whitespace_disabled_soft = 0

" 删除文件内所有行末空格
nnoremap <silent> <leader>w :StripWhitespace<cr>
