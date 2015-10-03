source ~/.nvim/plugins.vim

let mapleader = ","

" ============================================================================
" === Abbreviations ==========================================================
iabbrev fucntion function
iabbrev fnuction function
                        
iabbrev cosnole console
iabbrev consoel console
iabbrev cosnoel console
iabbrev cosneol console

:command! WQ wq
:command! W w
:command! Q q
:command! Wq wq
:command! Wqa wqa
:command! Qa qa
nnoremap Q <nop>

" ============================================================================
" === Buffer and files =======================================================
"
set clipboard=unnamedplus
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

set complete=.,w,b,t,u " Specify how keyword completion should work
"set iskeyword+=-
set iskeyword-=.
"set omnifunc=syntaxcomplete#Complete " Default syntax completion

" ============================================================================
" === Plugins settings =======================================================
let g:bufExplorerShowRelativePath=1
let g:bufExplorerSortBy='mru'        " Sort by most recently used.
let g:ctrlp_map = '<c-p>'
let g:ctrlp_custom_ignore = '\.sql$\|\.git$\|node_modules'
let g:ctrlp_open_new_file = 't'
let g:ctrlp_tabpage_position = 'al'

let g:localvimrc_persistent = 2
let NERDTreeIgnore=['\.pyc$']
let g:NERDTreeChDirMode=2

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_exclude_preview=1

let g:detectindent_preferred_indent = 2
let g:detectindent_preferred_expandtab = 1

let g:unite_winheight = 10
let g:unite_split_rule = 'botright'
let g:unite_prompt = '» '
let g:unite_candidate_icon="▸"

let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_autoclose_preview_window_after_completion = 1

let g:unite_source_file_rec_ignore_pattern = 'node_modules'

call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])

call unite#custom#profile('files', 'filters', 'sorter_rank')
call unite#custom#source('file_rec/async','sorters','sorter_rank')

let g:gitgutter_enabled = 0

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
set shiftwidth=2 " Use 2 spaces for (auto)indent
set softtabstop=2 " Use 2 spaces for inserting <Tab> or using <BS>
set tabstop=2 " Use 2 spaces for <Tab> and :retab
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
noremap <M-j> <C-W>j
noremap <M-k> <C-W>k
noremap <M-h> <C-W>h
noremap <M-l> <C-W>l

nmap <silent> <Leader>r :NERDTreeToggle<CR>
nmap <silent> <Leader>d :bd<CR>
nmap <silent> <Leader>q ":q<CR>
nmap <silent> <Leader>l :set list!<CR>
nmap <silent> <Leader>v :Unite -start-insert menu:vim<CR>
nmap <silent> <Leader>i :Unite -start-insert menu:indent<CR>
nmap <silent> <Leader>x :Unite -start-insert menu:execute<CR>
nmap <silent> <Leader>g :GitGutterToggle<CR>
nmap <silent> <Leader>y :SyntasticToggleMode<CR>
nnoremap <silent> <Leader>e :BufExplorer<CR>

" Smooth scroll bindings
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 20, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 20, 4)<CR>

nnoremap <leader>p :<C-u>Unite -start-insert file_rec/async:!<CR>
nnoremap \ :Unite grep:.<cr>
nnoremap <silent> <Leader>m :Unite -buffer-name=recent -winheight=10 file_mru<cr>


" ============================================================================
" === Search =================================================================
set gdefault " All matches in a line are substituted instead of one
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
set background=dark
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-default

"highlight clear SignColumn
"highlight VertSplit    ctermbg=236
"highlight ColorColumn  ctermbg=237
"highlight LineNr       ctermbg=236 ctermfg=240
"highlight CursorLineNr ctermbg=236 ctermfg=3
"highlight CursorLine   ctermbg=236
"highlight StatusLineNC ctermbg=238 ctermfg=0
"highlight StatusLine   ctermbg=240 ctermfg=12
"highlight IncSearch    ctermbg=3   ctermfg=1
"highlight Search       ctermbg=1   ctermfg=3
"highlight Visual       ctermbg=3   ctermfg=0
"highlight Pmenu        ctermbg=240 ctermfg=12
"highlight PmenuSel     ctermbg=3   ctermfg=1
"highlight SpellBad     ctermbg=0   ctermfg=1

" ============================================================================
" === Unite menus ============================================================
let g:unite_source_menu_menus = {}

let g:unite_source_menu_menus.vim = { 'description' : 'Vim settings', }
let g:unite_source_menu_menus.vim.command_candidates = [
    \['Open nvimrc', ':e $MYVIMRC'],
    \['Open plugins', ':e ~/.nvim/plugins.vim'],
    \['Source this file', ':so %'],
    \['Install plugins', ':PlugInstall'],
    \['Clean plugins', ':PlugClean'],
    \['Update plugins', ':PlugUpdate'],
    \['Upgrade vim-plug', ':PlugUpgrade'],
    \]

let g:unite_source_menu_menus.indent = { 'description' : 'Indentation settings', }
let g:unite_source_menu_menus.indent.command_candidates = [
    \['4 width / spaces indentation', ':set expandtab ts=4 sw=4 sts=4'],
    \['2 width / spaces indentation', ':set expandtab ts=2 sw=2 sts=2'],
    \['4 width / tabs indentation', ':set noexpandtab ts=4 sw=4 sts=4'],
    \['2 width / tabs indentation', ':set noexpandtab ts=2 sw=2 sts=2'],
    \]

let g:unite_source_menu_menus.execute = { 'description' : 'Execute various commands', }
let g:unite_source_menu_menus.execute.command_candidates = [
    \['Remove console.logs from current file with confirm', ':%s/.*console.*\n//c'],
    \['Toggle JSHint', ':let g:jshint2_save = 1 - g:jshint2_save | :echo "JSHint ".(g:jshint2_save?"On":"Off")'],
    \]
" ============================================================================
" === Command-line completion ================================================
set wildignore+=*.o,*.obj,*.pyc,.git " Ignore certain types of files on completion
set wildmenu " Use menu to show command-line completion (in 'full' case)

" Set command-line completion mode:
"   - on first <Tab>, when more than one match, list all matches and complete
"     the longest common  string
"   - on second <Tab>, complete the next full match and show menu
"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_mode_map = {
    \ "mode": "passive",
    \ "active_filetypes": [],
    \ "passive_filetypes": [] }
let g:syntastic_loc_list_height=5
"let g:syntastic_debug = 3
let g:jsx_ext_required = 0
let g:gist_default_private = 1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
tnoremap <Esc> <C-\><C-n>
