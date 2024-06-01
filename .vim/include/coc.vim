
" neoclide/coc.nvim
" ��װ
"sudo apt-get install nodejs
"sudo apt-get install clangd
"sudo npm install n -g
"sudo n latest 
"sudo add-apt-repository ppa:jonathonf/vim ���°汾vim
"sudo apt update
"sudo apt install vim
":CocInstall coc-clangd
"�»��߱�ʶ��
hi CocErrorHighlight cterm=underline gui=underline
hi CocWarningHighlight cterm=underline gui=underline

" ״̬��Ϣ����vim-airline��
let g:airline#extensions#coc#enabled = 1
let airline#extensions#coc#error_symbol = 'e:'
let airline#extensions#coc#warning_symbol = '!:'
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
" ���ֹ��ʱͻ����ʾ���ż������á�
autocmd CursorHold * silent call CocActionAsync('highlight')
" ʹ��tab��������ȫ��
function! s:check_back_space() abort
  let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

let g:copilot_no_tab_map = v:true
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
"let g:coc_disable_startup_warning = 1
set updatetime=100 

" tab ������ȫ��
<c-l> ��ȫʱ������ȫ���������б�
<c-j> ������ȫʱ������һ����������ͨģʽ�����ģʽ��
<c-j> ������ȫʱ������һ����������ͨģʽ�����ģʽ��
" ��ת����һ������򾯸���Ϣ��
nmap <silent> <c-h> <Plug>(coc-diagnostic-prev)
" ��ת����һ������򾯸���Ϣ��
nmap <silent> <c-l> <Plug>(coc-diagnostic-next)
