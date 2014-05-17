" === Command-line completion

set wildignore+=*.o,*.obj,*.pyc,.git " Ignore certain types of files on completion
set wildmenu " Use menu to show command-line completion (in 'full' case)

" Set command-line completion mode:
"   - on first <Tab>, when more than one match, list all matches and complete
"     the longest common  string
"   - on second <Tab>, complete the next full match and show menu
set wildmode=list:longest,full
