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
	"Currently there's a problem with neovim and nerdtree...
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
	Plug 'sirver/ultisnips'
	Plug 'honza/vim-snippets'

	if has('nvim')
		Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	else
		Plug 'Shougo/deoplete.nvim'
		Plug 'roxma/nvim-yarp'
		Plug 'roxma/vim-hug-neovim-rpc'
	endif
	let g:deoplete#enable_at_startup = 1

call plug#end()

"source ~/.vimrc
source $HOME/.vimrc-common

let g:ale_lint_on_enter = 0
let g:ale_sign_error = "&&"
let g:ale_sign_warning = "??"

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

let g:airline_theme = 'badwolf'
