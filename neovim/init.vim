" neovim init.vim
" Author: Mike Hansford
" Last edited: 24 Nov 2017
behave mswin
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

" Tabs set to 2 spaces for current project
" editorconfig not working due to SOE limitations
" (Usually 4 and noexpandtab)
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
""""""""""""""""""""""""""""""""""""""""""

set foldmethod=manual
set foldcolumn=8
set viminfo='50,f1 "save marks and jumps for 50 files and global marks A-Z
set path+=** "allow all :find searches to be recursive from current directory - prob. works with other commands too
set diffopt+=vertical

execute pathogen#infect()
execute pathogen#helptags()

colorscheme jellybeans
set guifont=Consolas:h11

let mapleader = ","

" Use Ctrl-r to replace selected text
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" Use Ctrl-n to switch between absolute line numbers and relative line numbers
nnoremap <silent><C-n> :set rnu! rnu? <cr>

" Use Ctrl-h to switch search highlighting on and off
nnoremap <silent><C-h> :set hls! hls? <cr>

" Use // to search for visually selected text - use n to find next
vnoremap // y/<C-R>"<CR>

" Uppercase current string in insert mode
inoremap <c-u> <esc>viw<s-u>ea

" Edit global .eslintrc
nnoremap <leader>el :tabnew $HOME\.eslintrc.json<CR>

" Cut copy paste to/from system clipboard
vnoremap <leader>x "+x
vnoremap <leader>y "+y
nnoremap <leader>p "*p

set wildignore+=*/.git/*,*/.hg/*,*.orig,*.*~,*.pdf,*.gif,*.jpg,*jpeg,*.png
set wildignore+=*.swp
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Omni-completion
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS " for CSS 2.1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" toggle whitespace
cnoremap white set syntax=whitespace<CR>
cnoremap nowhite set syntax=on<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show and hide non-printing chars
set list
set listchars="" 
set listchars=tab:→\ 
set listchars+=trail:• 
set listchars+=extends:≫

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
