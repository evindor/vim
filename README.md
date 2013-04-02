My VIM config I use for JavaScript development

To install just enter next commands:

    cd ~
    git clone git://github.com/evindor/vim.git .vim
    ln -s .vim/vimrc .vimrc
    cd .vim
    git clone https://github.com/gmarik/vundle.git bundle/vundle
    vim +BundleInstall +qall

Now with Vundle :)

Bundles used:

    Bundle 'gmarik/vundle'
    Bundle 'mileszs/ack.vim'
    Bundle 'vim-scripts/bufexplorer.zip'
    Bundle 'Townk/vim-autoclose'
    Bundle 'scrooloose/nerdtree'
    Bundle 'rickharris/vim-railscasts'
    Bundle 'tpope/vim-fugitive'
    Bundle 'kien/ctrlp.vim'
    Bundle 'vim-scripts/JavaScript-syntax'
    Bundle 'Lokaltog/vim-powerline'
    Bundle 'kchmck/vim-coffee-script'
    Bundle 'scrooloose/nerdcommenter'
    Bundle 'briancollins/vim-jst'
    Bundle 'altercation/vim-colors-solarized'
    Bundle 'jonathanfilip/vim-lucius'
    Bundle 'walm/jshint.vim'
    Bundle 'scrooloose/syntastic'
    Bundle 'SuperTab'
    Bundle 'evindor/vim-rusmode'
