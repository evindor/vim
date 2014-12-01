set nocompatible
filetype off
call plug#begin('~/.vim/plugged')

" Syntax
Plug 'jelera/vim-javascript-syntax'
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
Plug 'tomasr/molokai'
Plug 'Shougo/unite.vim'
Plug 'bling/vim-airline'

" Editing
Plug 'Raimondi/delimitMate'
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh --clang-completer' }
Plug 'scrooloose/nerdcommenter'

" Utility
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive'
Plug 'evindor/vim-rusmode'
Plug 'embear/vim-localvimrc'
Plug 'ciaranm/detectindent'
Plug 'vimwiki/vimwiki'
Plug 'terryma/vim-smooth-scroll'
Plug 'Shougo/vimproc.vim', { 'do': 'make'}
Plug 'Shougo/neomru.vim'
Plug 'kien/ctrlp.vim'

" Language specific
Plug 'moll/vim-node'
Plug 'gorodinskiy/vim-coloresque'
Plug 'Shutnik/jshint2.vim'
Plug 'tpope/vim-leiningen', { 'for': 'clojure' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'tpope/vim-projectionist'
Plug 'maksimr/vim-jsbeautify'
Plug 'einars/js-beautify'
Plug 'evindor/vim-jake', { 'on': 'JakeConnect'}
Plug 'marijnh/tern_for_vim', {'do': 'npm install'}
Plug 'amdt/vim-niji'

call plug#end()

filetype plugin indent on
