
" voldikss/vim-translator
" apt install python3-pip
" pip install socks
"
" 弹出窗口中显示。
let g:translator_window_type = 'preview'
" 目标语言为中文。
let g:translator_target_lang = 'zh'
" 源语言自动识别。
let g:translator_source_lang = 'auto'
" 使用的翻译工具。
let g:translator_default_engines = ['bing']
"
" 翻译Window的高亮配置
hi def link TranslatorQuery             Identifier
hi def link TranslatorDelimiter         Special
hi def link TranslatorExplain           Statement
" 普通模式下翻译光标下英文字符串，在命令行显示翻译结果。
nmap <silent> <F6>t <Plug>Translate
" 可视模式下翻译选中英文字符串，在命令行显示翻译结果。
vmap <silent> <F6>t <Plug>TranslateV
" 普通模式下翻译光标下英文字符串，在窗口显示翻译结果。
nmap <silent> <F6>w <Plug>TranslateW
" 可视模式下翻译光标下英文字符串，在窗口显示翻译结果。
vmap <silent> <F6>w <Plug>TranslateWV

" 窗口背景
hi def link Translator                  Normal
hi def link TranslatorBorder            NormalFloat
