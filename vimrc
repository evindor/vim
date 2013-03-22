" No need to be compatible with old vi
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"
" Bundles!
"
" {{{

" Github
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

" }}}

filetype plugin indent on

"
" Fix russian keys input
"
" {{{
set langmap=йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ъ],фa,ыs,вd,аf,пg,рh,оj,лk,дl,ж\\;,э',яz,чx,сc,мv,иb,тn,ьm,б\\,,ю.,ё`,ЙQ,ЦW,УE,КR,ЕT,НY,ГU,ШI,ЩO,ЗP,Х{,Ъ},ФA,ЫS,ВD,АF,ПG,РH,ОJ,ЛK,ДL,Ж:,Э\\",ЯZ,ЧX,СC,МV,ИB,ТN,ЬM,Б<,Ю>,Ё~
:command WQ wq
:command W w
:command Q q
:command Wq wq
:command Qa qa

" }}}

" Set the <Leader> for combo commands
let mapleader = ","

set clipboard=unnamed
set diffopt+=iwhite
set shell=zsh
if has("gui_macvim")
    let macvim_skip_cmd_opt_movement = 1
endif

"
" BUFFERS AND FILES
"
" {{{

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

"
" INTERFACE
"
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

" Show PEP8 line length border
autocmd FileType python setlocal colorcolumn=80
autocmd FileType javascript setlocal colorcolumn=80
autocmd FileType coffee setlocal colorcolumn=80

" Switch between windows faster
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" }}}

"
" THEME AND HIGHLITING
"
" {{{

syntax enable
let python_highlight_all=1
set t_Co=256
set background=light
"let g:solarized_termcolors=256
"let g:Powerline_colorscheme='skwp'
"let g:Powerline_symbols='fancy'
colorscheme solarized 

" }}}

"
" SEARCH AND REPLACE
"
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

"
" COMMAND-LINE COMPLETION
"
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

"
" FORMATTING AND EDITING
"
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

" }}}

"
" COMPLETION
"
" {{{

" Specify how keyword completion should work
set complete=.,w,b,t
set iskeyword+=-

" Default syntax completion
set omnifunc=syntaxcomplete#Complete

 "Completion depends on filetype
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown,jst setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" }}}

"
" PLUGINS
"
" {{{

" Set the tags files to be the following and F4 to re-build tags file

" Nerd tree toggle
nmap <silent> <Leader>r :NERDTreeToggle<CR>
nmap <silent> <Leader>e :BufExplorer<CR>
nmap <silent> <Leader>s :SyntasticToggleMode<CR>
nmap <silent> <Leader>w :Errors<CR>
"nmap <silent> <Leader>e :MiniBufExplorer<CR>
nmap <silent> <Leader>d :bd<CR>
nmap <silent> <Leader>q :q<CR>
" Buffer Explorer
let g:bufExplorerShowRelativePath=1
let g:bufExplorerSortBy='name'
let g:ctrlp_map = '<c-p>' 
let g:ctrlp_custom_ignore = '\.sql$\|\.git$'
let g:ctrlp_open_new_file = 't'
let g:ctrlp_tabpage_position = 'al'
let g:syntastic_mode_map = { 'mode': 'active',
                            \ 'active_filetypes': ['js', 'coffee', 'py'],
                            \ 'passive_filetypes': ['jst', 'html'] }
let g:syntastic_check_on_open=1
let g:syntastic_auto_loc_list=1
let g:syntastic_javascript_jshint_conf='~/.vim/jshint.json'
let g:syntastic_coffee_lint_options='-f ~/.vim/coffeelint.json'
let NERDTreeIgnore=['\.pyc$']

" }}}
