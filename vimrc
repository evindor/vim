" === No need to be compatible with old vi
" {{{

set nocompatible
filetype off

" }}}
" === Load vundle
" {{{

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" }}}
" === Bundles!
" {{{

Bundle 'gmarik/vundle'
Bundle 'mileszs/ack.vim'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/JavaScript-syntax'
Bundle 'bling/vim-airline'
Bundle 'kchmck/vim-coffee-script'
Bundle 'scrooloose/nerdcommenter'
Bundle 'briancollins/vim-jst'
Bundle 'altercation/vim-colors-solarized'
Bundle 'jonathanfilip/vim-lucius'
Bundle 'ervandew/supertab'
Bundle 'evindor/vim-rusmode'
Bundle 'groenewege/vim-less'
Bundle 'digitaltoad/vim-jade'
Bundle 'Handlebars'
Bundle 'vim-stylus'
Bundle "mattn/emmet-vim"
Bundle "moll/vim-node"

filetype plugin indent on

" }}}
" === Fix typos (Wq, WQ, etc)
" {{{

:command! WQ wq
:command! W w
:command! Q q
:command! Wq wq
:command! Qa qa

" }}}
" === Buffers and files
" {{{

set clipboard=unnamed

set shell=zsh

" Save file content whenere we leave current buffer or close window
set autowriteall

" Use UTF-8 as the default buffer encoding
set encoding=utf-8

" File encogings list
set fileencodings=utf-8,windows-1251,iso-8859-15,koi8-r

" Mark abandoned buffers as hidden instead of unload them
set hidden

" Write swap file to disk after every 50 characters
set updatecount=50

" Jump to the last known position in a file just after opening it, if the '" mark is set
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif

" }}}
" === Interface
" {{{

" Mouse clicking
set mouse=a

" I want to see where I am
set cursorline

" Use markers to specify folds
set foldmethod=marker

" Always show status line, even for one window
set laststatus=2

" Do not wrap long lines, because it is ugly
set nowrap

" Show line numbers
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

" Show line length border
autocmd FileType python setlocal colorcolumn=80
autocmd FileType javascript setlocal colorcolumn=80
autocmd FileType coffee setlocal colorcolumn=80

" Switch between windows faster
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" }}}
" === Theme and highliting
" {{{

syntax enable
set diffopt+=iwhite
let python_highlight_all=1
set t_Co=256
set background=light
"let g:solarized_termcolors=256
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_exclude_preview=1
colorscheme solarized

" }}}
" === Search and replace
" {{{

" All matches in a line are substituted instead of one
set gdefault

" Remember up to 100 'colon' commmands and search patterns
set history=100

" Highlight search results
set hlsearch

" Enable incremental search
set incsearch

" Case insensetive search
set ignorecase

" Case sensitive search if search string contains upper case characters
set smartcase

" Set the search scan to wrap lines
set wrapscan

" Turn off highlight search
nmap  <Space> :set invhls<cr>:set hls?<cr>

" }}}
" === Command-line completion
" {{{

" Ignore certain types of files on completion
set wildignore+=*.o,*.obj,*.pyc,.git

" Use menu to show command-line completion (in 'full' case)
set wildmenu

" Set command-line completion mode:
"   - on first <Tab>, when more than one match, list all matches and complete
"     the longest common  string
"   - on second <Tab>, complete the next full match and show menu
set wildmode=list:longest,full

" }}}
" === Formatting and editing
" {{{

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

if has("gui_macvim")
    let macvim_skip_cmd_opt_movement = 1
endif

" }}}
" === Completion
" {{{

" Specify how keyword completion should work
set complete=.,w,b,t
set iskeyword+=-

" Default syntax completion
set omnifunc=syntaxcomplete#Complete

 "Completion depends on filetype
autocmd FileType css setlocal et ts=4 sw=4 sts=4
autocmd FileType html,markdown,jst setlocal et ts=4 sw=4 sts=4
autocmd FileType javascript setlocal et ts=4 sw=4 sts=4
autocmd FileType xml setlocal et ts=4 sw=4 sts=4
autocmd FileType eruby setlocal et ts=2 sw=2 sts=2
autocmd FileType coffee setlocal et ts=2 sw=2 sts=2

" }}}
" === Plugins settings and mappings
" {{{

" Set the tags files to be the following and F4 to re-build tags file

" Set the <Leader> for combo commands
let mapleader = ","

" Nerd tree toggle
nmap <silent> <Leader>r :NERDTreeToggle<CR>
nmap <silent> <Leader>e :BufExplorer<CR>
nmap <silent> <Leader>w :Errors<CR>
nmap <silent> <Leader>d :bd<CR>
nmap <silent> <Leader>n :bn<CR>
nmap <silent> <Leader>p :bp<CR>
nmap <silent> <Leader>q :q<CR>

let g:bufExplorerShowRelativePath=1
let g:bufExplorerSortBy='name'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_custom_ignore = '\.sql$\|\.git$'
let g:ctrlp_open_new_file = 't'
let g:ctrlp_tabpage_position = 'al'

let g:user_emmet_mode='i'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key = '<c-e>'

let NERDTreeIgnore=['\.pyc$']

" }}}
" === Abbreviations
" {{{

iabbrev fucntion function
iabbrev cosnole console
iabbrev consoel console

" }}}
