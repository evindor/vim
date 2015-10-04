filetype off
call plug#begin('~/.nvim/plugged')

" Syntax
Plug 'othree/yajs.vim'
Plug 'pangloss/vim-javascript'
Plug 'groenewege/vim-less'
Plug 'digitaltoad/vim-jade'
Plug 'vim-stylus'
Plug 'nono/vim-handlebars'
Plug 'guns/vim-clojure-static'
Plug 'briancollins/vim-jst'
Plug 'kchmck/vim-coffee-script'

" Interface
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Shougo/unite.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-devicons'

" Themes
Plug 'tomasr/molokai'
Plug 'chriskempson/base16-vim'

" Editing
Plug 'Raimondi/delimitMate'
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh --clang-completer' }
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
"Plug 'benekastah/neomake'

" Utility
"Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive'
Plug 'evindor/vim-rusmode'
Plug 'embear/vim-localvimrc'
Plug 'ciaranm/detectindent'
Plug 'vimwiki/vimwiki'
Plug 'terryma/vim-smooth-scroll'
Plug 'Shougo/vimproc.vim', { 'do': 'make -f make_mac.mak'}
Plug 'Shougo/neomru.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'thinca/vim-quickrun'
Plug 'ryanss/vim-hackernews'
Plug 'wincent/terminus'
Plug 'wincent/ferret'
"Plug 'janko-m/vim-test'
Plug 'keith/gist.vim'

" Language specific
Plug 'moll/vim-node'
Plug 'gorodinskiy/vim-coloresque'
Plug 'Shutnik/jshint2.vim'
"Plug 'evindor/vim-jake', { 'on': 'JakeConnect'}
Plug 'marijnh/tern_for_vim', {'do': 'npm install'}
Plug 'mxw/vim-jsx'
Plug 'klen/python-mode'

call plug#end()

filetype plugin indent on
