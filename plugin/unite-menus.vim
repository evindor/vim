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
