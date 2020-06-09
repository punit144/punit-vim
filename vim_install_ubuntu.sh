#!/bin/bash
sudo apt-get install vim -y
sudo apt-get install git -y
git clone https://github.com/punit144/punit-vim.git ~/
cp ~/punit-vim/vimrc ~/.vimrc
mkdir ~/.vim
mkdir ~/.vim/autoload
mkdir ~/.vim/bundle
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle
git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle
git clone https://github.com/davidhalter/jedi-vim.git ~/.vim/bundle
git submodule update --init --recursive ~/.vim/bundle/jedi-vim
git clone https://github.com/tomasr/molokai.git ~/.vim/bundle
git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle
git clone https://github.com/powerline/powerline.git ~/.vim/bundle
git clone --recurse-submodules https://github.com/python-mode/python-mode ~/.vim/bundle
git clone https://github.com/vim-airline/vim-airline.git ~/.vim/bundle
git clone https://github.com/vim-airline/vim-airline-themes.git ~/.vim/bundle
git clone https://github.com/tmhedberg/SimpylFold.git ~/.vim/bundle
git clone https://github.com/ycm-core/YouCompleteMe.git ~/.vim/bundle
git clone https://github.com/jnurmine/Zenburn.git ~/.vim/bundle
git clone https://github.com/tpope/vim-pathogen.git ~/.vim/autoload
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git submodule update --init --recursive ~/.vim/bundle/YouCompleteMe
sudo apt install cmake
sudo apt-get install python3-dev
python3 ~/.vim/bundle/YouCompleteMe/install.py --all
