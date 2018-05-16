if has("autocmd")
  filetype plugin indent on

  augroup filteype
    autocmd!
    autocmd BufNewFile,BufRead swagger.yml,swagger.yaml set filetype=swagger-yaml.yaml
    autocmd BufNewFile,BufRead swagger.json set filetype=swagger-json.json
    autocmd BufNewFile,BufRead .babelrc set filetype=json
  augroup END

  " omnifunc
  augroup omnicomplete
    autocmd!
    autocmd FileType css,sass,scss,stylus,less setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType javascript,jsx,javascript.jsx setlocal omnifunc=tern#Complete
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  augroup END

  augroup formatprg
    autocmd!
    autocmd FileType javascript,jsx,javascript.jsx setlocal formatprg=prettier\ --stdin
    autocmd FileType html setlocal formatprg="tidy --indent auto --quiet yes --show-body-only auto --show-errors 0 --wrap 0 --tidy-mark no --sort-attributes alpha"
  augroup END

  augroup vimTrimmer
    autocmd!
    autocmd BufWritePre * call TrimTrailingWhitespace()
  augroup END

  augroup autoreload
    autocmd!
    autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * checktime
  augroup END

  augroup golang
    autocmd!
    autocmd FileType go setlocal tabstop=4 smartindent
    autocmd FileType go highlight WhiteSpace guifg=#3a3a3a
  augroup END

  augroup gitconfig
    autocmd!
    autocmd FileType gitconfig setlocal tabstop=4 smartindent noexpandtab
  augroup END
endif
