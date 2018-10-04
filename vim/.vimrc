" vimrc for windows 
" Author: Mike Hansford
" Last edited: 13 Nov 2017
behave mswin

source $HOME/.vimrc-common

" Tabs set to 2 spaces for current project
" editorconfig not working due to SOE limitations
" (Usually 4 and noexpandtab)
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab


" NERDTree
nnoremap <leader>nt :NERDTree
nnoremap <leader>ntt :NERDTreeToggle
nnoremap <leader>ntc :NERDTreeClose
nnoremap <leader>ntf :NERDTreeFind

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_stl_format = "[Syn:(%t)%E{ E:%e W:%w}]"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "&&"
let g:syntastic_warning_symbol = "??"
" TODO set ignore files to be anything inside node_modules
" let g:syntastic_ignore_files = ['\m^/usr/include/', '\m\c\.h$']
let g:syntastic_javascript_checkers = ['eslint']


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 5 Aug 2014 Reloads _vimrc on save
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

"highlight Cursor guifg=white guibg=black
"highlight iCursor guifg=white guibg=steelblue
"set guicursor=n-v-c:block-Cursor
"set guicursor+=i:ver100-iCursor
"set guicursor+=n-v-c:blinkon0
"set guicursor+=i:blinkwait10

:runtime macros/matchit.vim
:syntax on
filetype plugin indent on
