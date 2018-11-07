if exists('g:plugs["nerdtree"]')
  " open a NERDTree automatically when vim starts up if no files were specified?
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

  let g:NERDTreeMinimalUI = 1
  let g:NERDTreeDirArrows = 1
  let g:NERDTreeWinSize = 50

  " close NERDTree after a file has been opened
  let NERDTreeQuitOnOpen=1
endif
