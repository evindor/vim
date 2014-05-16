set clipboard=unnamed
set shell=zsh

" Save file content whenere we leave current buffer or close window
set autowriteall
set encoding=utf-8
set fileencodings=utf-8,windows-1251,iso-8859-15,koi8-r

" Mark abandoned buffers as hidden instead of unload them
set hidden

" Write swap file to disk after every 50 characters
set updatecount=50

" Jump to the last known position in a file just after opening it, if the '" mark is set
augroup position
    autocmd!
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif
augroup END
