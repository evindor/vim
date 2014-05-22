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
    autocmd BufNewFile,BufReadPost * :DetectIndent
    autocmd BufNewFile,BufReadPost *.cljx setfiletype clojure    
augroup END
