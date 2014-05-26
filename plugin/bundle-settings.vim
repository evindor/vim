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
