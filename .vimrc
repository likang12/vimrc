
if version >= 603
  set helplang=cn
endif

let mapleader=","

call plug#begin('~/.vim/pluged')
" Ycm 自动补全插件
Plug 'ycm-core/YouCompleteMe'

Plug 'majutsushi/tagbar'

Plug 'scrooloose/nerdtree'

Plug 'easymotion/vim-easymotion'

Plug 'junegunn/vim-easy-align'
" 自动生成.ycm_extra_conf.py
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" airline 美化插件
Plug 'vim-airline/vim-airline'
" airline 主题插件
Plug 'vim-airline/vim-airline-themes'
" Leader 文件查找，tag,字符查找插件
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
" a.vim 头文件,.c文件快速跳转插件
Plug 'vim-scripts/a.vim'

Plug 'vim-scripts/sessionman.vim'
" 翻译插件
Plug 'voldikss/vim-translator'
" coc 自动不全插件
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

" 行末空格管理
Plug 'ntpeters/vim-better-whitespace'
" git插件
Plug 'airblade/vim-gitgutter'

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
" ntpeters/vim-better-whitespace
source $HOME/.vim/include/vim-better-whitespace.vim
" airblade/vim-gitgutter
source $HOME/.vim/include/vim-gitgutter.vim

syntax on
syntax enable

" 设置搜索高亮
set hlsearch
" hi clear
" 设置搜索字符颜色, 通过hi命令可查找不同命令对应的配色方案
hi Search term=standout ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
hi LineNr term=bold ctermfg=3
" if 颜色
hi Conditional term=bold ctermfg=3
" else 颜色
hi Exception term=bold ctermfg=3
" for 循环颜色
hi Repeat term=bold ctermfg=3
hi Operator term=bold ctermfg=3
hi Keyword term=bold ctermfg=3
hi Label term=bold ctermfg=3
" 函数颜色
hi cFunctions term=bold ctermfg=6
" 可视模式颜色
hi Visual term=reverse ctermbg=8 guibg=LightGrey
" 高亮当前行
set cursorline
hi CursorLine   cterm=NONE ctermbg=black ctermfg=NONE
"hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white
"逐步搜索模式，对当前键入的字符进行搜索而不必等待键入完成
set incsearch
" 显示行号
set nu
" 自动缩进
set autoindent
" ts=4 Tab显示长度为4个空格,默认是8个空格， sw=4表示每一级缩进长度为4个空格
set ts=4 sw=4
" 如果存在CMakefile.txt 或者 etab文件,则tab用是个空格代替
if filereadable("CMakeLists.txt") || filereadable("etab")
    " et表示tab 使用空格代替, softtabstop=4表示编辑模式的时候按退格键的时候退回缩进的长度
    set et softtabstop=4
endif

nmap <Leader>et :set et softtabstop=4<CR>
nmap <Leader>rt :retab!<CR>

" set fileencoding=gb2312
set fileencoding=utf-8
set termencoding=utf-8
set encoding=utf-8
set langmenu=zh_CN.UTF-8
" 设置打开文件的编码格式
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" 分割窗口改变窗口的尺寸
" 调整垂直窗口大小
nnoremap    t=  :resize +5<CR>
nnoremap    t-  :resize -5<CR>
" 调整水平窗口大小
nnoremap    t,  :vertical resize +5<CR>
nnoremap    t.  :vertical resize -5<CR>
nnoremap    tj  :resize +5<CR>

"每次保存文件时，自动更新tags
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

