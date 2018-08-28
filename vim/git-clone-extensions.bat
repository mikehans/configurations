cd %USERPROFILE%
cmd /c mkdir %userprofile%\vimfiles
cmd /c mkdir %userprofile%\vimfiles\pack
cmd /c mkdir %userprofile%\vimfiles\pack\plugins
cmd /c mkdir %userprofile%\vimfiles\pack\plugins\opt
cmd /c mkdir %userprofile%\vimfiles\pack\plugins\start
cd /d %userprofile%\vimfiles\pack\plugins\start

git clone https://github.com/ctrlpvim/ctrlp.vim.git
git clone https://github.com/Raimondi/delimitMate.git
git clone https://github.com/mattn/emmet-vim.git
git clone https://github.com/nanotech/jellybeans.vim.git
git clone https://github.com/scrooloose/nerdcommenter.git
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/AndrewRadev/splitjoin.vim.git
git clone https://github.com/easymotion/vim-easymotion.git
git clone https://github.com/Chiel92/vim-autoformat.git
git clone https://github.com/tolinwei/vim-airline.git
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/tpope/vim-surround.git
git clone https://github.com/tpope/vim-dispatch.git
git clone https://github.com/tpope/vim-repeat.git
git clone https://github.com/tpope/vim-projectionist.git
git clone https://github.com/pangloss/vim-javascript.git
git clone https://github.com/mxw/vim-jsx.git