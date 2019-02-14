set runtimepath^=~/.vim runtimepath+=/.vim/after
set runtimepath+=~/.fzf
let &packpath = &runtimepath

let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

call plug#begin('~/.config/nvim/plugged')
	"Plug 'ctrlpvim/ctrlp.vim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'}
  Plug 'junegunn/fzf.vim'
  Plug 'heavenshell/vim-jsdoc'
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
  Plug 'easymotion/vim-easymotion'
  Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh'
    \ }

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

set foldmethod=syntax

let g:airline#extensions#ale#enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_lint_on_enter = 0
let g:ale_sign_error = "&&"
let g:ale_sign_warning = "??"
let g:ale_open_list = 0

let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsListSnippets='<c-Tab>'
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

let g:LanguageClient_autoStart=1
let g:LanguageClient_autoStop=1
"let g:LanguageClient_devel=1
"let g:LanguageClient_loggingLevel='DEBUG'
let g:LanguageClient_serverCommands = {
  \  'javascript': ['javascript-typescript-stdio'],
  \  'javascript.jsx': ['javascript-typescript-stdio'],
  \  'css': ['css-languageserver', '--stdio'],
  \  'html': ['html-languageserver', '--stdio']
  \ }

set completefunc=LanguageClient#complete

autocmd FileType javascript nnoremap <buffer>
    \ <leader>ld :call LanguageClient_textDocument_definition()<cr>
autocmd FileType javascript nnoremap <buffer>
    \ <leader>lh :call LanguageClient_textDocument_hover()<cr>
autocmd FileType javascript nnoremap <buffer>
    \ <leader>lr :call LanguageClient_textDocument_rename()<cr>

let g:airline_theme = 'badwolf'

let g:bufferline_echo = 0
