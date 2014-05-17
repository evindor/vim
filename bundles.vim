set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle "gmarik/vundle"

" Syntax
Bundle "vim-scripts/JavaScript-syntax"
Bundle "groenewege/vim-less"
Bundle "digitaltoad/vim-jade"
Bundle "vim-stylus"
Bundle "nono/vim-handlebars"
Bundle "guns/vim-clojure-static"
Bundle "briancollins/vim-jst"
Bundle "kchmck/vim-coffee-script"

" Interface
Bundle "scrooloose/nerdtree"
Bundle "sjl/gundo.vim"
Bundle "tomasr/molokai"
Bundle "Shougo/unite.vim"
Bundle "bling/vim-airline"

" Editing
Bundle "Raimondi/delimitMate"
Bundle "ervandew/supertab"
Bundle "scrooloose/nerdcommenter"
Bundle "gcmt/wildfire.vim"


" Utility
Bundle "mileszs/ack.vim"
Bundle "tpope/vim-fugitive"
Bundle "evindor/vim-rusmode"
Bundle "embear/vim-localvimrc"
Bundle "ciaranm/detectindent"
Bundle "vimwiki/vimwiki"
Bundle "terryma/vim-smooth-scroll"
Bundle "Shougo/vimproc.vim"
Bundle "Shougo/neomru.vim"

" Language specific
Bundle "moll/vim-node"
Bundle "tpope/vim-fireplace"
Bundle "Shutnik/jshint2.vim"

filetype plugin indent on
