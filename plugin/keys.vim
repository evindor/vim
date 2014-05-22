" Switch between windows faster
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

nnoremap ; :

nmap <silent> <Leader>r :NERDTreeToggle<CR>
nmap <silent> <Leader>d :bd<CR>
nmap <silent> <Leader>q :q<CR>
nmap <silent> <Leader>l :set list!<CR>
nmap <silent> <Leader>v :Unite menu:vim<CR>
nmap <silent> <Leader>i :Unite -start-insert menu:indent<CR>

" Smooth scroll bindings
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 20, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 20, 4)<CR>

nnoremap <leader>p :<C-u>Unite -start-insert file_rec/async:!<CR>
nnoremap \ :Unite grep:.<cr>
nnoremap <silent> <Leader>e :Unite -no-split -buffer-name=buffer buffer<CR>
nnoremap <silent> <Leader>m :Unite -buffer-name=recent -winheight=10 file_mru<cr>

vnoremap / y/\V<c-r>"<CR>
