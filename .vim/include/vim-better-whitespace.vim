
" vim-better-whitespace
" ������ĩ�ո����
let g:better_whitespace_enabled = 1
" ��ĩ�ո������ɫ
let g:better_whitespace_ctermcolor = 'red'
"let g:strip_whitespace_on_save = 1

"����ʱɾ���ļ���������ĩ�ո�
"�رձ����ļ�ʱɾ����ĩ�ո��ѯ�ʡ�
"let g:strip_whitespace_confirm = 0
"ȡ������Ĭ�Ͽ�ݼ���
"let g:better_whitespace_operator = ''
""let g:better_whitespace_blacklist = []              "��պ��������������ļ���Ч��
"markdown��Ҫָ��������Ч����ʹû�����������
":autocmd FileType markdown EnableWhitespace
":autocmd FileType markdown EnableStripWhitespaceOnSave
"
"Normalģʽ�¸�����ǰ�пհ��ַ���������ʹ��Ӧ������
"let g:current_line_whitespace_disabled_hard = 0
"let g:current_line_whitespace_disabled_soft = 0

" ɾ���ļ���������ĩ�ո�
nnoremap <silent> <leader>w :StripWhitespace<cr>
