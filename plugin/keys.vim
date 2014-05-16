" Switch between windows faster
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

nmap <silent> <Leader>r :NERDTreeToggle<CR>
nmap <silent> <Leader>e :BufExplorer<CR>
nmap <silent> <Leader>d :bd<CR>
nmap <silent> <Leader>n :bn<CR>
nmap <silent> <Leader>p :bp<CR>
nmap <silent> <Leader>q :q<CR>
nmap <silent> <Leader>l :set list!<CR>
nmap <silent> <Leader>v :e $MYVIMRC<CR>

" Smooth scroll bindings
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 20, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 20, 4)<CR>
