source ~/.vim/bundles.vim

let mapleader = ","

" Autoreload vimrc
augroup reload_vimrc
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

" ============================================================================
" === Abbreviations ==========================================================
iabbrev fucntion function
iabbrev cosnole console
iabbrev consoel console
iabbrev cosnoel console

:command! WQ wq
:command! W w
:command! Q q
:command! Wq wq
:command! Qa qa
nnoremap Q <nop>

" ============================================================================
" === Buffer and files =======================================================
set clipboard=unnamed
set shell=zsh
set autowriteall " Save file content whenere we leave current buffer or close window
set encoding=utf-8
set fileencodings=utf-8,windows-1251,iso-8859-15,koi8-r
set hidden " Mark abandoned buffers as hidden instead of unload them
set updatecount=50 " Write swap file to disk after every 50 characters
" Jump to the last known position in a file just after opening it, if the '" mark is set
augroup position
    autocmd!
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif
augroup END

set complete=.,w,b,t " Specify how keyword completion should work
set iskeyword+=-
set omnifunc=syntaxcomplete#Complete " Default syntax completion

" ============================================================================
" === Plugins settings =======================================================
let g:bufExplorerShowRelativePath=1
let g:bufExplorerSortBy='mru'        " Sort by most recently used.
let g:ctrlp_map = '<c-p>'
let g:ctrlp_custom_ignore = '\.sql$\|\.git$'
let g:ctrlp_open_new_file = 't'
let g:ctrlp_tabpage_position = 'al'
"let g:jshint2_save = 1

let g:localvimrc_persistent = 2
let NERDTreeIgnore=['\.pyc$']

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_exclude_preview=1

let g:detectindent_preferred_indent = 4
let g:detectindent_preferred_expandtab = 1

let g:unite_winheight = 10
let g:unite_split_rule = 'botright'
let g:unite_prompt = '» '
let g:unite_candidate_icon="▸"

let g:unite_source_file_rec_ignore_pattern = 'node_modules'

call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])

call unite#custom#profile('files', 'filters', 'sorter_rank')
call unite#custom#source('file_rec/async','sorters','sorter_rank')

augroup delimitmate
    autocmd!
    autocmd FileType mail,text let b:delimitMate_autoclose = 0
    autocmd FileType clojure let b:delimitMate_autoclose = 0
augroup END

augroup unite
    autocmd!
    autocmd FileType unite call s:unite_settings() " Custom mappings for the unite buffer
augroup END

function! s:unite_settings()
        let b:SuperTabDisabled=1 " Play nice with supertab
        " Enable navigation with control-j and control-k in insert mode
        imap <buffer> <C-j>   <Plug>(unite_select_next_line)
        imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction

" ============================================================================
" === Formatting =============================================================
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

" ============================================================================
" === Interface ==============================================================
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

" ============================================================================
" === Key mappings ===========================================================
" Switch between windows faster
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

nnoremap ; :

nmap <silent> <Leader>r :NERDTreeToggle<CR>
nmap <silent> <Leader>d :bd<CR>
nmap <silent> <Leader>q :q<CR>
nmap <silent> <Leader>l :set list!<CR>
nmap <silent> <Leader>v :Unite menu:vim<CR>
nmap <silent> <Leader>i :Unite -start-insert menu:indent<CR>

" Smooth scroll bindings
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 20, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 20, 4)<CR>

nnoremap <leader>p :<C-u>Unite -start-insert file_rec/async:!<CR>
nnoremap \ :Unite grep:.<cr>
nnoremap <silent> <Leader>e :Unite -no-split -buffer-name=buffer buffer<CR>
nnoremap <silent> <Leader>m :Unite -buffer-name=recent -winheight=10 file_mru<cr>

vnoremap / y/\V<c-r>"<CR>

" ============================================================================
" === Search =================================================================
set gdefault " All matches in a line are substituted instead of one
set history=100 " Remember up to 100 'colon' commmands and search patterns
set hlsearch " Highlight search results
set incsearch " Enable incremental search
set ignorecase
set smartcase " Case sensitive search if search string contains upper case characters
set wrapscan " Set the search scan to wrap lines
" Turn off highlight search
nmap  <Space> :set invhls<cr>:set hls?<cr>

" ============================================================================
" === Theme ==================================================================
syntax enable
set diffopt+=iwhite
set t_Co=256
set background=dark
let g:molokai_original=1
colorscheme molokai

" ============================================================================
" === Unite menus ============================================================
let g:unite_source_menu_menus = {}

let g:unite_source_menu_menus.vim = { 'description' : 'Vim settings', }
let g:unite_source_menu_menus.vim.command_candidates = [
    \['Open vimrc', ':e $MYVIMRC'],
    \['Open bundles', ':e ~/.vim/bundles.vim'],
    \['Source this file', ':so %'],
    \['Install bundles', ':BundleInstall'],
    \['Clean bundles', ':BundleClean'],
    \]

let g:unite_source_menu_menus.indent = { 'description' : 'Indentation settings', }
let g:unite_source_menu_menus.indent.command_candidates = [
    \['4 width / spaces indentation', ':set expandtab ts=4 sw=4 sts=4'],
    \['2 width / spaces indentation', ':set expandtab ts=2 sw=2 sts=2'],
    \['4 width / tabs indentation', ':set noexpandtab ts=4 sw=4 sts=4'],
    \['2 width / tabs indentation', ':set noexpandtab ts=2 sw=2 sts=2'],
    \]
" ============================================================================
" === Command-line completion ================================================
set wildignore+=*.o,*.obj,*.pyc,.git " Ignore certain types of files on completion
set wildmenu " Use menu to show command-line completion (in 'full' case)

" Set command-line completion mode:
"   - on first <Tab>, when more than one match, list all matches and complete
"     the longest common  string
"   - on second <Tab>, complete the next full match and show menu
set wildmode=list:longest,full
