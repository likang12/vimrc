
if version >= 603
  set helplang=cn
endif

let mapleader=","

call plug#begin('~/.vim/pluged')
" Ycm �Զ���ȫ���
Plug 'ycm-core/YouCompleteMe'

Plug 'majutsushi/tagbar'

Plug 'scrooloose/nerdtree'

Plug 'easymotion/vim-easymotion'

Plug 'junegunn/vim-easy-align'
" �Զ�����.ycm_extra_conf.py
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" airline �������
Plug 'vim-airline/vim-airline'
" airline ������
Plug 'vim-airline/vim-airline-themes'
" Leader �ļ����ң�tag,�ַ����Ҳ��
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
" a.vim ͷ�ļ�,.c�ļ�������ת���
Plug 'vim-scripts/a.vim'

Plug 'vim-scripts/sessionman.vim'
" ������
Plug 'voldikss/vim-translator'
" coc �Զ���ȫ���
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" YouCompleteMe
source $HOME/.vim/include/YouCompleteMe.vim
" scrooloose/nerdtree
source $HOME/.vim/include/nerdtree.vim
" Yggdroot/LeaderF
source $HOME/.vim/include/LeaderF.vim
" neoclide/coc.nvim
"source $HOME/.vim/include/coc.vim
" voldikss/vim-translator
source $HOME/.vim/include/vim-translator.vim
" vim-airline/vim-airline
source $HOME/.vim/include/vim-airline.vim
" majutsushi/tagbar
source $HOME/.vim/include/tagbar.vim
" vim-scripts (a.vim sessionman.vim)
source $HOME/.vim/include/vim-scripts.vim

syntax on
syntax enable

" ������������
set hlsearch
" hi clear
" ���������ַ���ɫ, ͨ��hi����ɲ��Ҳ�ͬ�����Ӧ����ɫ����
hi Search term=standout ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
hi LineNr term=bold ctermfg=3
" if ��ɫ
hi Conditional term=bold ctermfg=3
" else ��ɫ
hi Exception term=bold ctermfg=3
" for ѭ����ɫ
hi Repeat term=bold ctermfg=3
hi Operator term=bold ctermfg=3
hi Keyword term=bold ctermfg=3
hi Label term=bold ctermfg=3
" ������ɫ
hi cFunctions term=bold ctermfg=6
" �������ɫ
hi operation ctermfg=28
" ����ģʽ��ɫ
hi Visual term=reverse ctermbg=8 guibg=LightGrey
" ������ǰ��
set cursorline   
hi CursorLine   cterm=NONE ctermbg=black ctermfg=NONE 
"hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white
"������ģʽ���Ե�ǰ������ַ��������������صȴ��������
set incsearch
" ��ʾ�к�
set nu
" �Զ����� 
set autoindent 
" ts=4 Tab��ʾ����Ϊ4���ո�,Ĭ����8���ո� sw=4��ʾÿһ����������Ϊ4���ո�
set ts=4 sw=4
" �������CMakefile.txt ���� etab�ļ�,��tab���Ǹ��ո����
if filereadable("CMakeLists.txt") || filereadable("etab")
    " et��ʾtab ʹ�ÿո����, softtabstop=4��ʾ�༭ģʽ��ʱ���˸����ʱ���˻������ĳ���
    set et softtabstop=4
endif

nmap <Leader>et :set et softtabstop=4<CR>
nmap <Leader>rt :retab!<CR>

set fileencoding=gb2312
set termencoding=utf-8
set encoding=utf-8
set langmenu=zh_CN.UTF-8
" ���ô��ļ��ı����ʽ
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" �ָ�ڸı䴰�ڵĳߴ�
" ������ֱ���ڴ�С
nnoremap    t=  :resize +5<CR>
nnoremap    t-  :resize -5<CR>
" ����ˮƽ���ڴ�С
nnoremap    t,  :vertical resize +5<CR>
nnoremap    t.  :vertical resize -5<CR>
nnoremap    tj  :resize +5<CR>

"ÿ�α����ļ�ʱ���Զ�����tags
"autocmd BufWritePost *.cpp,*.c,*.h silent! :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q

" cscope
if filereadable("cscope.out")
        cs add cscope.out
endif

nmap <F2>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <F2>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <F2>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <F2>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <F2>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <F2>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <F2>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <F2>d :cs find d <C-R>=expand("<cword>")<CR><CR>

