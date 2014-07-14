set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

Bundle "gmarik/Vundle.vim"

" Syntax
Bundle "jelera/vim-javascript-syntax"
Bundle "pangloss/vim-javascript"
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
"Bundle "ervandew/supertab"
Bundle "Valloric/YouCompleteMe"
Bundle "scrooloose/nerdcommenter"
Bundle "gcmt/wildfire.vim"
Bundle "Lokaltog/vim-easymotion"

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
Bundle "kien/ctrlp.vim"

" Language specific
Bundle "moll/vim-node"
Bundle "Shutnik/jshint2.vim"
Bundle "tpope/vim-leiningen"
Bundle "tpope/vim-fireplace"
Bundle "tpope/vim-projectionist"
Bundle "maksimr/vim-jsbeautify"
Bundle "einars/js-beautify"
Bundle "evindor/vim-jake"
Bundle "marijnh/tern_for_vim"

filetype plugin indent on
