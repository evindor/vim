source ~/.vim/bundles.vim

let mapleader = ","

" === Autoreload vimrc
augroup reload_vimrc
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END
