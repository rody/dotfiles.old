if exists('g:plugs["nerdtree"]')
  " open a NERDTree automatically when vim starts up if no files were specified?
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

  let g:NERDTreeMinimalUI = 1
  let g:NERDTreeDirArrows = 1
  let g:NERDTreeWinSize = 50

  " close NERDTree after a file has been opened
  let NERDTreeQuitOnOpen=1

  function! NERDTreeHighlightFile(extension, fg, bg)
    exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
    exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:bg .' guifg='. a:fg
  endfunction

  call NERDTreeHighlightFile('xml', 'gray', 'bg')
endif
