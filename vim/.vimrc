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
set nohls

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

let mapleader=","

" clear autocommands
:autocmd!

" folding
set foldmethod=indent
set foldcolumn=8
set foldlevel=99


" save marks and jumps for 50 files and global marks A-Z
set viminfo='50,f1

" allow :find searches to recurse from current dir
set path+=**

" Use Ctrl-r to replace selected text
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" Use Ctrl-n to switch between relative and absolute line numbers
nnoremap <silent><C-n> :set rnu! rnu? <cr>

" Use Ctrl-H to switch search highlighting on/off
nnoremap <silent><C-h> :set hls! hls? <cr>

" Change working directory to path of current file
nnoremap <silent><leader>cd :cd %:p:h <CR>

set wildignore+=*/.git,*.orig,*.*~,*.pdf,*.gif,*.jpg,*.jpeg,*.png
set wildignore+=*.swp,*/node_modules/*

" Cut copy paste to/from system clipboard
vnoremap <leader>x "+x
vnoremap <leader>y "+y
nnoremap <leader>p "*p

" Show and hide non-printing characters
set list 
set listchars=""
set listchars=tab:→\
set listchars+=trail:•
set listchars+=extends:≫
" Default off
set nolist

call plug#begin('~/.vim/plugged')
  Plug 'tpope/vim-fugitive'
  Plug 'mattn/emmet-vim'
  Plug 'scrooloose/nerdcommenter'
  Plug 'nanotech/jellybeans.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'mxw/vim-jsx'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'easymotion/vim-easymotion'
  Plug 'pangloss/vim-javascript'
  Plug 'dense-analysis/ale'
  Plug 'scrooloose/nerdtree'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'Omnisharp/omnisharp-vim'
call plug#end()

colorscheme jellybeans

filetype plugin indent on
syntax on

let g:coc_global_extensions = [
  \ 'coc-json',
  \ 'coc-prettier',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-snippets'
  \]

colorscheme jellybeans

" Omnisharp config
autocmd FileType cs nmap <silent> :OmniSharpGotoDefinition<CR>
autocmd FileType cs nnoremap <buffer> <leader>fu :OmniSharpFindUsages<CR>
autocmd FileType cs nnoremap <buffer> <leader>fi :OmniSharpFindImplementations<CR>
autocmd FileType cs nnoremap <leader><Space> :OmniSharpGetCodeActions<CR>

autocmd FileType ts nmap <silent> gd :call CocActionSync('jumpDefinition')<CR>
autocmd FileType html nmap <silent> gd :call CocActionSync('jumpDefinition')<CR>

" ale config
let g:airline#extensions#ale#enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_lint_on_enter = 1
let g:ale_sign_error = '&&'
let g:ale_sign_warning = '??'
let g:ale_open_list = 0

" NERDTree config
let g:NERDTreeShowHidden = 1
let g:NERDTreeStatusLine = []
nnoremap <leader>nt :NERDTree
nnoremap <leader>ntt :NERDTreeToggle
nnoremap <leader>ntc :NERDTreeClose
nnoremap <leader>ntf :NERDTreeFind

" Airline config
set laststatus=2
let g:airline_section_b = ''
let g:airline#extension#default#section_truncate_width = {
  \ 'b' : 10
  \ }
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_theme = 'badwolf'

" use alt+hjkl to move between splits
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
