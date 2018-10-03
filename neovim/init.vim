set runtimepath^=~/.vim runtimepath+=/.vim/after
let &packpath = &runtimepath

let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

call plug#begin('~/.config/nvim/plugged')
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'tpope/vim-fugitive'
	Plug 'Raimondi/delimitMate'
	Plug 'mattn/emmet-vim'
	Plug 'nanotech/jellybeans.vim'
	Plug 'scrooloose/nerdcommenter'
"	Plug 'scrooloose/nerdtree'
	Plug 'AndrewRadev/splitjoin.vim'
	Plug 'tolinwei/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'pangloss/vim-javascript'
	Plug 'mxw/vim-jsx'
	Plug 'editorconfig/editorconfig-vim'
	Plug 'w0rp/ale'
	Plug 'airblade/vim-gitgutter'
	Plug 'bling/vim-bufferline'
call plug#end()

source ~/.vimrc

let g:ale_lint_on_enter = 0
let g:ale_sign_error = "&&"
let g:ale_sign_warning = "??"

let g:airline_theme = 'badwolf'
