
" Yggdroot/LeaderF
nnoremap <leader>ff :LeaderfFile <CR>
nnoremap <leader>fb :LeaderfBuffer <CR>
nnoremap <leader>fl :LeaderfLineAll <CR>
nnoremap <leader>fc :LeaderfFunctionAll <CR>
nnoremap <leader>fg :Leaderf gtags <CR>
nnoremap <leader>fr :Leaderf rg --ignore-file ~/.vimcache/.LfCache/ignore <CR>
let g:Lf_ShowDevIcons = 0
let g:Lf_WindowPosition = 'popup'                          "使能浮动窗口，需要Vim 8.1.1615以上版本。
let g:Lf_PreviewInPopup = 1                                "使能按ctrl p键在弹出窗口中预览结果。
let g:Lf_HideHelp = 1                                      "隐藏帮助信息。
let g:Lf_UseCache = 0
let g:Lf_CacheDirectory = expand('~/.vimcache/')           "设置Leaderf缓存根目录。
let g:Lf_ShowDevIcons = 0                                  "不显示图标。
let g:Lf_WildIgnore = {
            \ 'dir': ['img','.svn','.hg','.vscode', 'devel', 'build'],
            \ 'file': ['*.out','*.png','*.sw?','~$*','*.bak','*.exe','*.o','*.ko','*.so','*.py[co]', 'tags']
            \}

"gtags配置 sudo apt-get install global
let g:Lf_GtagsAutoGenerate = 1                             "自动生成gtags数据库。保存在~/.vimcache/.lfcache/gtags/。
let g:Lf_RootMarkers = ['.git', '.svn']                    "工程根目录标识。
let g:Lf_Gtagslabel = 'native-pygments'

" sudo apt-get install ripgrep
"通过Leaderf rg在当前缓存中搜索光标下的字符串，需按回车确认。
" noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
nmap <F3>b :<C-R>=printf("Leaderf! rg --all-buffers -e %s ", expand("<cword>"))<CR><CR>
nmap <F3>g :<C-R>=printf("Leaderf! rg -e %s --ignore-file ~/.vimcache/.LfCache/ignore", expand("<cword>"))<CR><CR>

hi Lf_hl_cursorline ctermfg=7 guifg=#6927ff

