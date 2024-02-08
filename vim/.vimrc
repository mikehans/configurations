source $HOME/vimconfig/settings.vim

let mapleader=","

:autocmd!
autocmd BufEnter * normal zR

source $HOME/vimconfig/keymappings.vim

call plug#begin()
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'tpope/vim-surround'
  Plug 'nanotech/jellybeans.vim'
  Plug 'vimwiki/vimwiki'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'scrooloose/nerdcommenter'
  Plug 'easymotion/vim-easymotion'
  Plug 'editorconfig/editorconfig'
  Plug 'jiangmiao/auto-pairs'
call plug#end()

colorscheme jellybeans

source $HOME/vimconfig/coc.vim
source $HOME/vimconfig/airline.vim
source $HOME/vimconfig/fzf.vim
source $HOME/vimconfig/vimwiki.vim
source $HOME/vimconfig/coc.vim

syntax on
filetype plugin on
