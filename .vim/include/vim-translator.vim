
" voldikss/vim-translator
" apt install python3-pip
" pip install socks
"
" ������������ʾ��
let g:translator_window_type = 'preview'
" Ŀ������Ϊ���ġ�
let g:translator_target_lang = 'zh'
" Դ�����Զ�ʶ��
let g:translator_source_lang = 'auto'
" ʹ�õķ��빤�ߡ�
let g:translator_default_engines = ['bing']
"
" ����Window�ĸ�������
hi def link TranslatorQuery             Identifier
hi def link TranslatorDelimiter         Special
hi def link TranslatorExplain           Statement
" ��ͨģʽ�·�������Ӣ���ַ���������������ʾ��������
nmap <silent> <F6>t <Plug>Translate
" ����ģʽ�·���ѡ��Ӣ���ַ���������������ʾ��������
vmap <silent> <F6>t <Plug>TranslateV
" ��ͨģʽ�·�������Ӣ���ַ������ڴ�����ʾ��������
nmap <silent> <F6>w <Plug>TranslateW
" ����ģʽ�·�������Ӣ���ַ������ڴ�����ʾ��������
vmap <silent> <F6>w <Plug>TranslateWV

" ���ڱ���
hi def link Translator                  Normal
hi def link TranslatorBorder            NormalFloat
