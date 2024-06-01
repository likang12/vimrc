
" https://github.com/airblade/vim-gitgutter
" airblade/vim-gitgutter

" jump between hunks with [c and ]c
" preview, stage, and undo hunks with follows
" preview <leader>hp
" stage   <leader>hs
" undo    <leader>hu

" default off
let g:gitgutter_enabled=0
let g:gitgutter_highlight_lines=1

" enable/disable git-gutter
nnoremap <leader>gg :GitGutterToggle <CR>
