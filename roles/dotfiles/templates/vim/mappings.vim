
" Toggle NERDTree panel
map <silent> <leader>e :NERDTreeToggle<CR>
" Comment current line
map <silent> <leader>, <leader>c<space>
" Search using ag
nnoremap <leader>a :Grepper -tool grep -open -switch<cr>
" Remove highlighting on search results
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
" Index ctags on the current directory
map <Leader>ct :!ctags -R .<CR><CR>
" Activate :FZF
map <C-P> :FZF<CR>
" Toggle TagBar
nnoremap <silent> <Leader>B :TagbarToggle<CR>

" Move to left split window.
nnoremap <A-D-Left> <C-w>h
" Move to split window below.
nnoremap <A-D-Down> <C-w>j
" Move to split window above.
nnoremap <A-D-Up> <C-w>k
" Move to right split window.
nnoremap <A-D-Right> <C-w>l

map <leader>- :split<CR>
map <leader><bar> :vsplit<CR>

" Pane switching
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Map commands with capital letters for simplicity
:command! WQ wq
:command! Wq wq
:command! W w
:command! Q q
