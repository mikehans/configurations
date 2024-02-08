" keymappings.vim
"
" Use Ctrl-n to switch between absolute and relative line numbers
nnoremap <silent><C-n> :set rnu! rnu? <cr>

" Use Ctrl-h to turn search highlighting on/off
nnoremap <silent><C-h> :set hls! hls? <cr>

" Set current working directory to directory of current file
nnoremap <A-c> :cd %:h<cr>

" Open current window in new tab
nnoremap <A-o> :tabedit %<cr>
