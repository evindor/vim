let g:unite_source_menu_menus = {}

let g:unite_source_menu_menus.vim = { 'description' : 'Vim settings', }
let g:unite_source_menu_menus.vim.command_candidates = [
    \['Open vimrc', ':e $MYVIMRC'],
    \['Install bundles', ':BundleInstall'],
    \['Clean bundles', ':BundleClean'],
    \]

let g:unite_source_menu_menus.indent = { 'description' : 'Vim settings', }
let g:unite_source_menu_menus.indent.command_candidates = [
    \['Set tabs', ':set noexpandtab'],
    \['Set spaces', ':set expandtab'],
    \['4 spaces indentation', ':setlocal ts=4 sw=4 sts=4'],
    \['2 spaces indentation', ':setlocal ts=2 sw=2 sts=2'],
    \]
