" Author        : joseph
" Created       : 12/03/2019
" License       : MIT
" Description   : 
autocmd FileType psc nnoremap  <F9> :w <bar> :exec '!clear && pseint' shellescape(@%, 1)<cr>
autocmd FileType pseint nnoremap  <F9> :w <bar> :exec '!clear && pseint' shellescape(@%, 1)<cr>
source ~/.vim/syntax/psc.vim
