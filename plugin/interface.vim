set mouse=a " Mouse clicking
set cursorline " Highlight current line
set laststatus=2 " Always show status line, even for one window
set nowrap
set number
" Show line, column number, and relative position within a file in the status line
" set ruler
set scrolloff=3 " Scroll when cursor gets within 3 characters of top/bottom edge
set showcmd " Show (partial) command in the last line of the screen
set showmatch " When a bracket is inserted, briefly jump to a matching one
set showmode " At least let yourself know what mode you're in
set title " Show buffer name in the window's title
set ttyfast " Indicate a fast terminal connection
set autoread " Automatically load a changed file
" Show line length border
augroup line_len
    autocmd!
    autocmd FileType python setlocal colorcolumn=80
    autocmd FileType javascript setlocal colorcolumn=80
    autocmd FileType coffee setlocal colorcolumn=80
augroup END
