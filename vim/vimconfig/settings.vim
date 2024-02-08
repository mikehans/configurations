" settings vim
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
set belloff=all
set splitbelow

set foldmethod=syntax
set foldcolumn=4

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set guifont=Consolas:h12cANSI:qDRAFT

" set list
set listchars=""
set listchars=tab:→\ 
set listchars+=trail:• 
set listchars+=extends:≫

set nolist "set the default to off

set wildignore+=*/.git/*,*.orig,*.*~,*.pdf,*.gif,*.jpg,*.jpeg,*.png
set wildignore+=*.swp,*/node_modules/*
