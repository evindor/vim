" Allow backspacing over everything
set backspace=indent,eol,start

" Use autoindention
set autoindent

" All tabs will be replaced by spaces
set expandtab

" Round indent to multiple of 'shiftwidth' for > and < commands
set shiftround

" Use 4 spaces for (auto)indent
set shiftwidth=4

" Use 4 spaces for inserting <Tab> or using <BS>
set softtabstop=4

" Use 4 spaces for <Tab> and :retab
set tabstop=4

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" Set view for hidden characters
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
"
augroup indent_settings
    autocmd!
    autocmd FileType css setlocal et ts=4 sw=4 sts=4
    autocmd FileType html,markdown,jst setlocal et ts=4 sw=4 sts=4
    autocmd FileType javascript setlocal et ts=4 sw=4 sts=4
    autocmd FileType xml setlocal et ts=4 sw=4 sts=4
    autocmd FileType eruby setlocal et ts=2 sw=2 sts=2
    autocmd FileType coffee setlocal et ts=2 sw=2 sts=2
    autocmd BufNewFile,BufReadPost * :DetectIndent
    autocmd BufNewFile,BufReadPost *.cljx setfiletype clojure    
augroup END
