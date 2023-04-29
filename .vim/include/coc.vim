
" neoclide/coc.nvim
" 安装
"sudo apt-get install nodejs
"sudo apt-get install clangd
"sudo npm install n -g
"sudo n latest 
"sudo add-apt-repository ppa:jonathonf/vim 最新版本vim
"sudo apt update
"sudo apt install vim
":CocInstall coc-clangd
"下划线标识。
hi CocErrorHighlight cterm=underline gui=underline
hi CocWarningHighlight cterm=underline gui=underline

" 状态信息加入vim-airline。
let g:airline#extensions#coc#enabled = 1
let airline#extensions#coc#error_symbol = 'e:'
let airline#extensions#coc#warning_symbol = '!:'
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
" 保持光标时突出显示符号及其引用。
autocmd CursorHold * silent call CocActionAsync('highlight')
" 使用tab键触发补全。
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

" tab 触发补全。
<c-l> 补全时触发补全函数参数列表。
<c-j> 函数补全时跳到下一个参数，普通模式或插入模式。
<c-j> 函数补全时跳到上一个参数，普通模式或插入模式。
" 跳转到上一个错误或警告信息。
nmap <silent> <c-h> <Plug>(coc-diagnostic-prev)
" 跳转到下一个错误或警告信息。
nmap <silent> <c-l> <Plug>(coc-diagnostic-next)
