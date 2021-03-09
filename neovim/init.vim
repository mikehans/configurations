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

let mapleader = ","

" clear autocommands
:autocmd!

" folding
set foldmethod=syntax
set foldcolumn=8

autocmd BufRead * normal zR

" save marks and jumps for 50 files and global marks A-Z
set viminfo='50,f1

" Use Ctrl-n to switch between absolute and relative line numbers
nnoremap <silent><C-n> :set rnu! rnu? <cr>

" Use Ctrl-h to turn search highlighting on / off
nnoremap <silent><C-h> :set hls! hls? <cr>

set wildignore+=*/.git/*,*.orig,*.*~,*.pdf,*.gif,*.jpg,*.jpeg,*.png
set wildignore+=*.swp,*/node_modules/*

" show and hide non-printing chars
set list
set listchars=""
set listchars=tab:→\ 
set listchars+=trail:• 
set listchars+=extends:≫

set nolist " default off

call plug#begin('~/.vim/plugged')
	" Git
	Plug 'tpope/vim-fugitive'
	Plug 'airblade/vim-gitgutter'

	" Tools and themes
	Plug 'scrooloose/nerdcommenter'
	Plug 'easymotion/vim-easymotion'
	Plug 'dense-analysis/ale'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'scrooloose/nerdtree'
	Plug 'editorconfig/editorconfig'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'nanotech/jellybeans.vim'
	Plug 'tpope/vim-surround'
	Plug 'mattn/emmet-vim'
	
	" Syntax
	Plug 'pangloss/vim-javascript'
	Plug 'mxw/vim-jsx'
	Plug 'HerringtonDarkholme/yats.vim'
call plug#end()

colorscheme jellybeans

" Airline config
set laststatus=2
let g:airline_theme='wombat'
let g:airline_section_b=''

" NERDTree
nnoremap <leader>nt :NERDTree
nnoremap <leader>ntt :NERDTreeToggle
nnoremap <leader>ntc :NERDTreeClose


syntax on
filetype plugin indent on
