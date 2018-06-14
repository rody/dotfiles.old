filetype indent plugin on
syntax on

set nobackup
set nowritebackup
set noswapfile
set noshowmode  "Don't show current mode in command line (required for echodoc)

set relativenumber
set number
set scrolloff=3                    " minimal number of screen lines to keep above and below the cursor
set nowrap
set hidden
set autowrite                      " Automatically :write before running commands
set list listchars=tab:»·,trail:·  " Display extra whitespace characters
let mapleader = ","
let g:mapleader = ','              " Use <Leader> in global plugin.

" Default indentation {{{
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Search {{{
set incsearch
set hlsearch " higlight search matches
set ignorecase
set smartcase

" Open new split panes to right and bottom, which feels more natural {{{
set splitbelow
set splitright

if executable('bash')
  set shell=bash
endif
if executable('zsh')
  set shell=zsh
endif

" Netrw (default file browser
let g:netrw_banner = 0
let g:netrw_liststyle = 3 " tree view
let g:netrw_winsize = 25 " 25% of window size
let g:netrw_browse_split = 4
let g:netrw_altv = 1

" statusline {{{
function! AddStatuslineFlag(varName, goodValues)
  set statusline+=%#error#
  exec "set statusline+=%{RenderStlFlag(".a:varName.",'".a:goodValues."',1)}"
  set statusline+=%*
  exec "set statusline+=%{RenderStlFlag(".a:varName.",'".a:goodValues."',0)}"
endfunction

function! RenderStlFlag(value, goodValues, error)
  let goodValues = split(a:goodValues, ',')
  let good = index(goodValues, a:value) != -1
  if (a:error && !good) || (!a:error && good)
    return a:value
  else
    return ''
  endif
endfunction

let g:currentmode={
\ 'n'  : 'Normal',
\ 'no' : 'N·Operator Pending',
\ 'v'  : 'Visual',
\ 'V'  : 'V·Line',
\ '' : 'V·Block',
\ 's'  : 'Select',
\ 'S'  : 'S·Line',
\ '^S' : 'S·Block',
\ 'i'  : 'Insert',
\ 'R'  : 'Replace',
\ 'Rv' : 'V·Replace',
\ 'c'  : 'Command',
\ 'cv' : 'Vim Ex',
\ 'ce' : 'Ex',
\ 'r'  : 'Prompt',
\ 'rm' : 'More',
\ 'r?' : 'Confirm',
\ '!'  : 'Shell',
\ 't'  : 'Terminal'
\}

function! GetCurrentMode(exclude, show)
  let current = toupper(g:currentmode[mode()])
  if (a:show && (current == a:exclude)) || (!a:show && current != a:exclude)
    return ' '.current.' '
  else
    return ''
  endif
endfunction

highlight User1 ctermbg=Blue ctermfg=White guibg=Blue

set laststatus=2
set statusline=
set statusline+=%#todo#%m%*
set statusline+=%h%w%q
set statusline+=\ %.20f
set statusline+=\ \ %#Error#%{GetCurrentMode('NORMAL',0)}%*
set statusline+=%{GetCurrentMode('NORMAL',1)}
set statusline+=\ %=                            " align left
set statusline+=%r
set statusline+=\ [
" set statusline+=%{strlen(&fenc)?&fenc:'none'} " file encoding
call AddStatuslineFlag('&fenc', 'utf-8') "file encoding
set statusline+=,
call AddStatuslineFlag('&ff', 'unix')    "fileformat
set statusline+=]\ %y
