git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +BundleInstall +qall
cd ~/.vim/bundle/vimproc.vim && make
cd ~/.vim/bundle/YouCompleteMe && ./install.sh --clang-completer
cd ~/.vim/bundle/tern_for_vim && npm install
ln -s ~/.vim/vimrc ~/.vimrc
echo "DONE!";
exit 0;
