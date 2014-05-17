set backspace=indent,eol,start " Allow backspacing over everything
set autoindent " Use autoindention
set expandtab " All tabs will be replaced by spaces
set shiftround " Round indent to multiple of 'shiftwidth' for > and < commands
set shiftwidth=4 " Use 4 spaces for (auto)indent
set softtabstop=4 " Use 4 spaces for inserting <Tab> or using <BS>
set tabstop=4 " Use 4 spaces for <Tab> and :retab
" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:< " Set view for hidden characters
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
