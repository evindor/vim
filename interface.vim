" Mouse clicking
set mouse=a

" Highlight current line
set cursorline

" Always show status line, even for one window
set laststatus=2

set nowrap
set number

" Show line, column number, and relative position within a file in the status line
" set ruler

" Scroll when cursor gets within 3 characters of top/bottom edge
set scrolloff=3

" Show (partial) command in the last line of the screen
set showcmd

" When a bracket is inserted, briefly jump to a matching one
set showmatch

" At least let yourself know what mode you're in
set showmode

" Show buffer name in the window's title
set title

" Indicate a fast terminal connection
set ttyfast

" Automatically load a changed file
set autoread

" Show line length border
augroup line_len
    autocmd!
    autocmd FileType python setlocal colorcolumn=80
    autocmd FileType javascript setlocal colorcolumn=80
    autocmd FileType coffee setlocal colorcolumn=80
augroup END
