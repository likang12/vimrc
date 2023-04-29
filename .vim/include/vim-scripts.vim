

" vim-scripts/a.vim
" :A switches to the header file corresponding to the current file being edited (or vise versa)
nmap <leader>aa :A<CR>
" :AS splits and switches
nmap <leader>as :AS<CR>
" :AV vertical splits and switches
nmap <leader>av :AV<CR>
" :AT new tab and switches
nmap <leader>at :AT<CR>

" vim-scripts/sessionman.vim
nmap <leader>sl :SessionList<CR>
nmap <leader>ss :SessionSave<CR>
nmap <leader>sc :SessionClose<CR>

set sessionoptions=blank,buffers,curdir,folds,tabpages,winsize
