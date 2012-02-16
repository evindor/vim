My VIM config I use for JavaScript development

To install just enter next commands:

    cd ~
    git clone git://github.com/evindor/vim.git .vim
    ln -s .vim/vimrc .vimrc
    cd .vim
    git submodule init
    git submodule update

I use very few plugins and manage them using Pathogen. I prefer git submodules to be up-to-date with my plugins. My favourite plugins are:

* [CtrlP](http://www.vim.org/scripts/script.php?script_id=3736), the most helpful navigation plugin I ever seen.;
* [Snipmate](http://www.vim.org/scripts/script.php?script_id=2540), TextMate styled snippets;
* [JavaScript](https://github.com/pangloss/vim-javascript), better JS syntax and indentation;
* [Buffer Explorer](http://www.vim.org/scripts/script.php?script_id=42), you will love it if you prefer work with buffers instead of tabs.
