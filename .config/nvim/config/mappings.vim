inoremap jk <ESC>
" vnoremap jk <ESC>

" Better pasting from the clipboard
map <Leader>p :set paste<CR>o<ESC>"*]p:set nopaste<CR>

"clear search highlight
map <Leader>h :nohlsearch<CR>

" change active window with C-hjkl {{{
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-l> <C-W>l
nmap <C-h> <C-W>h
tnoremap <C-j> <C-\><C-N><C-W>j
tnoremap <C-k> <C-\><C-N><C-W>k
tnoremap <C-l> <C-\><C-N><C-W>l
tnoremap <C-h> <C-\><C-N><C-W>h
" resize windows
nmap <C-W>+ :resize +1<CR>
nmap <C-W>- :resize -1<CR>
nmap <C-W>> :vertical resize +1<CR>
nmap <C-W>< :vertical resize -1<CR>

" Quickfix shortcuts
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

if exists('g:plugs["nerdtree"]')
  nmap <Leader>n :NERDTreeToggle<CR>
else
  nmap <Leader>n :Lexplore<CR>
endif

if exists('g:plugs["vim-easy-align"]')
  " Start interactive EasyAlign in visual mode (e.g. vipga)
  xmap ga <Plug>(EasyAlign)
  " Start interactive EasyAlign for a motion/text object (e.g. gaip)
  nmap ga <Plug>(EasyAlign)
endif

if exists('g:plugs["fzf.vim"]')
  nmap <C-p> :Files<CR>
  nmap <C-b> :Buffers<CR>
endif

if exists('g:plugs["ale"]')
  nmap <Leader>f :ALEFix<CR>
endif

