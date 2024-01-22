set nocompatible
set number
set smarttab
set incsearch
set autoindent
set encoding=utf-8
set showcmd
set wildmenu
set nowrap
set nobackup
set noswapfile
set backspace=indent,eol,start
set ignorecase smartcase

let mapleader=","

:autocmd!

set foldmethod=syntax
set foldcolumn=8

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set guifont=Lucida_Console:h11cANSI:qDRAFT

autocmd BufRead * normal zR

" Use Ctrl-n to switch between absolute and relative line numbers
nnoremap <silent><C-n> :set rnu! rnu? <cr>

" Use Ctrl-h to turn search highlighting on/off
nnoremap <silent><C-h> :set hls! hls? <cr>


set wildignore+=*/.git/*,*.orig,*.*~,*.pdf,*.gif,*.jpg,*.jpeg,*.png
set wildignore+=*.swp,*/node_modules/*

call plug#begin()
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'nanotech/jellybeans.vim'
  Plug 'vimwiki/vimwiki'
call plug#end()

colorscheme jellybeans

" Airline config
set laststatus=2
let g:airline_theme='wombat'

" fzf config
nnoremap <C-p> :GFiles<cr>
nnoremap <silent><leader>l :Buffers<cr>

" vimwiki
let g:vimwiki_folding='list'

syntax on
filetype plugin on
