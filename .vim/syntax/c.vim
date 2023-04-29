"highlight Functions：ctermfg表示函数名的颜色，可以自行更换。
syn match cFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
syn match cFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
"hi cFunctions gui=NONE cterm=bold,underline  ctermfg=Darkblue
"hi cFunctions gui=NONE cterm=bold  ctermfg=DarkCyan

"syn keyword DebugFunction  printf
"hi DebugFunction gui=NONE cterm=bold  ctermfg=Red

"syn keyword GosFunction  GOS_S64 GOS_U64 GOS_S32 GOS_U32 GOS_S16 GOS_U16 GOS_S8 GOS_U8 GOS_BOOL GOS_CHAR GOS_TRUE GOS_FALSE GOS_NULL GOS_PCHAR GOS_FLOAT GOS_DOUBLE GOS_VOID  GOS_SUCCESS GOS_FAILURE 
"syn keyword GosFunction  HI_S64 HI_U64 HI_S32 HI_U32 HI_S16 HI_U16 HI_S8 HI_U8 HI_BOOL HI_CHAR HI_TRUE HI_FALSE HI_NULL HI_PCHAR HI_FLOAT HI_DOUBLE HI_VOID  HI_SUCCESS HI_FAILURE 
"hi GosFunction gui=NONE cterm=bold ctermfg=Darkgreen

syn  match        cTypeDefType  "/</I/i*/> /( &/=/s*/*/=/s*&/=/I /) /@="
syn  match        cTypeDefType  "/</I/i*::/i* /( &/=/s*/*/=/s*&/=/I /) /@="  contains= cScope, cFunction
syn  match        cTypeDefType  "/</I /( /i*</s*/I/i*/s*>:: /) /+/i* /( &/=/s*/*/=/s*&/=/I /) /@="  contains= cScope,cFunction,cTypeDefTypeTwo
syn  match        cTypeDefTypeTwo       "</s*/I/i*/s*>"  contains= cLogicalOperator
hi cTypeDefType gui=NONE cterm=bold  ctermfg=Lightred
hi cTypeDefTypeTwo gui=NONE cterm=bold  ctermfg=LightCyan

" pointer
syntax match pointer display "\*\{1,3\}\w\+"
syntax match pointer display "\* \{1,3\}\w\+"
syntax match pointer display "&\w\+"
syntax match pointer display "->\w\+"
syntax match pointer display "\.\w\+"
hi pointer gui=NONE cterm=bold  ctermfg=DarkYellow 

" structure & union & enum
syntax match struct_name contained "struct \w*[ ),]"hs=s+7,he=e-1
syntax match struct_key display "struct [a-zA-Z_]" contains=struct_name
hi struct_name gui=NONE cterm=bold  ctermfg=DarkMagenta   "深品红
highlight link struct_key keyword_basic

syntax match union_name contained "union \w* "hs=s+6
syntax match union_key display "union [a-zA-Z_]" contains=union_name
hi union_name gui=NONE cterm=bold  ctermfg=DarkMagenta  
highlight link union_key keyword_basic

syntax match enum_name contained "enum \w* "hs=s+5
syntax match enum_key display "enum [a-zA-Z_]" contains=enum_name
hi enum_name gui=NONE cterm=bold  ctermfg=DarkMagenta  
highlight link enum_key keyword_basic

syntax match operation display " [?:+=\-\*/&|~%^] "
syntax match operation display " [<>!] "
syntax match operation display " [<>!]= "
syntax match operation display " [+=\-\*/&|~]= "
syntax match operation display " \(&&\|||\) "
syntax match operation display " \(&&\|||\)$"
syntax match operation display "!"
syntax match operation display "++"
syntax match operation display " >>=\? "
syntax match operation display " <<=\? "
syntax match operation display "--"
"hi operation gui=NONE cterm=bold  ctermfg=Green  "浅红

""=====================================================
"hi Comment              ctermfg=DarkCyan        ctermbg=Black  
"hi PreProc              ctermfg=Blue            ctermbg=Black  
"hi Type                 ctermfg=LightYellow     ctermbg=Black           cterm=bold  
"hi Constant             ctermfg=Blue            ctermbg=Black           cterm=bold  
"hi Statement            ctermfg=Green           ctermbg=Black           cterm=bold  
"hi Special              ctermfg=Red             ctermbg=Black           cterm=bold  
"hi SpecialKey           ctermfg=Red             ctermbg=Black           cterm=bold  
"hi Number               ctermfg=LightRed         ctermbg=Black  
"hi cCppString           ctermfg=Red             ctermbg=Black  
"hi String               ctermfg=DarkGrey         ctermbg=Black  
"hi Identifier           ctermfg=Red             ctermbg=Black           cterm=bold  
"hi Todo                 ctermfg=Black           ctermbg=Gray            cterm=bold  
"hi NonText              ctermfg=LightBlue       ctermbg=Black  
"hi Directory            ctermfg=Blue            ctermbg=Black  
"hi Folded               ctermfg=DarkBlue        ctermbg=Black           cterm=bold  
"hi FoldColumn           ctermfg=LightBlue       ctermbg=Black  
"hi Underlined           ctermfg=LightBlue       ctermbg=Black           cterm=underline  
"hi Title                ctermfg=LightBlue       ctermbg=Black  
"hi Ignore               ctermfg=LightBlue       ctermbg=Black  


