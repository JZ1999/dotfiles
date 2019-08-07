" Author        : joseph
" Created       : 12/03/2019
" License       : MIT
" Description   : Pseint syntax for vim

" Quit when a syntax file was already loaded.
if exists('b:current_syntax') | finish|  endif

syntax match com "\v//.*$"
syntax keyword Algo Algoritmo FinAlgoritmo
syntax keyword Oper Y No O y o & ~ |
syntax keyword Proc Proceso FinProceso
syntax keyword Kwords Leer Escribir Dimension Segun Hacer FinSegun Mientras FinMientras Repetir Para Hasta FinPara
syntax match segun "\vDe Otro Modo"
syntax match repetir "\vHasta Que"
syntax keyword If Si Sino Entonces FinSi
syntax match igual "\v\="
syntax match igual2 "\v\<\-"
syntax match num "\v\d+"
syntax region str start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region funcInt start=/\vfunc\(/ skip=/\v\\./ end=/\v\)/
syntax region func start=/\v\w+\(/ skip=/\v\\./ end=/\v\)/

highlight link Algo Keyword
highlight link Oper Keyword
highlight link Proc Keyword
highlight link Kwords Keyword
highlight link segun Keyword
highlight link repetir Keyword
highlight link funcInt Function
highlight link num Number
highlight link If Keyword
highlight link com Comment
highlight link str String
highlight link func Function

highlight Algo ctermfg=blue guifg=#0000ee
highlight Oper ctermfg=blue guifg=#0000ee
highlight If ctermfg=blue guifg=#0000ee
highlight Proc ctermfg=blue guifg=#0000ee
highlight Kwords ctermfg=blue guifg=#0000ee
highlight segun ctermfg=blue guifg=#0000ee
highlight repetir ctermfg=blue guifg=#0000ee
highlight com ctermfg=gray guifg=#777777
highlight igual2 ctermfg=blue guifg=#0000ff
highlight igual ctermfg=gray guifg=#333333
highlight str ctermfg=red guifg=#B53E48
highlight func ctermfg=cyan guifg=#00eeee
highlight num ctermfg=yellow guifg=#666600
highlight funcInt ctermfg=magenta guifg=#990033

let b:current_syntax = 'pseint'
