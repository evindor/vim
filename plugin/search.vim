set gdefault " All matches in a line are substituted instead of one
set history=100 " Remember up to 100 'colon' commmands and search patterns
set hlsearch " Highlight search results
set incsearch " Enable incremental search
set ignorecase
set smartcase " Case sensitive search if search string contains upper case characters
set wrapscan " Set the search scan to wrap lines
" Turn off highlight search
nmap  <Space> :set invhls<cr>:set hls?<cr>
