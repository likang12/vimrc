
" Yggdroot/LeaderF
nnoremap <leader>ff :LeaderfFile <CR>
nnoremap <leader>fb :LeaderfBuffer <CR>
nnoremap <leader>fl :LeaderfLineAll <CR>
nnoremap <leader>fc :LeaderfFunctionAll <CR>
nnoremap <leader>fg :Leaderf gtags <CR>
nnoremap <leader>fr :Leaderf rg --ignore-file ~/.vimcache/.LfCache/ignore <CR>
let g:Lf_ShowDevIcons = 0
let g:Lf_WindowPosition = 'popup'                          "ʹ�ܸ������ڣ���ҪVim 8.1.1615���ϰ汾��
let g:Lf_PreviewInPopup = 1                                "ʹ�ܰ�ctrl p���ڵ���������Ԥ�������
let g:Lf_HideHelp = 1                                      "���ذ�����Ϣ��
let g:Lf_UseCache = 0
let g:Lf_CacheDirectory = expand('~/.vimcache/')           "����Leaderf�����Ŀ¼��
let g:Lf_ShowDevIcons = 0                                  "����ʾͼ�ꡣ
let g:Lf_WildIgnore = {
            \ 'dir': ['img','.svn','.hg','.vscode', 'devel', 'build'],
            \ 'file': ['*.out','*.png','*.sw?','~$*','*.bak','*.exe','*.o','*.ko','*.so','*.py[co]', 'tags']
            \}

"gtags���� sudo apt-get install global
let g:Lf_GtagsAutoGenerate = 1                             "�Զ�����gtags���ݿ⡣������~/.vimcache/.lfcache/gtags/��
let g:Lf_RootMarkers = ['.git', '.svn']                    "���̸�Ŀ¼��ʶ��
let g:Lf_Gtagslabel = 'native-pygments'

" sudo apt-get install ripgrep
"ͨ��Leaderf rg�ڵ�ǰ��������������µ��ַ������谴�س�ȷ�ϡ�
" noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
nmap <F3>b :<C-R>=printf("Leaderf! rg --all-buffers -e %s ", expand("<cword>"))<CR><CR>
nmap <F3>g :<C-R>=printf("Leaderf! rg -e %s --ignore-file ~/.vimcache/.LfCache/ignore", expand("<cword>"))<CR><CR>

hi Lf_hl_cursorline ctermfg=7 guifg=#6927ff

