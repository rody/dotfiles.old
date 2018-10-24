if has("autocmd")
  filetype plugin indent on

  augroup filteype
    autocmd!
    autocmd BufNewFile,BufRead swagger.yml,swagger.yaml set filetype=swagger-yaml.yaml
    autocmd BufNewFile,BufRead swagger.json set filetype=swagger-json.json
    autocmd BufNewFile,BufRead .babelrc set filetype=json
    autocmd BufNewFile,BufRead *.cls set filetype=java
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

  augroup python
    autocmd!
    autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix
    autocmd FileType python setlocal formatprg=yapf
    autocmd FileType python setlocal equalprg=yapf
  augroup END

  augroup golang
    autocmd!
    autocmd FileType go setlocal tabstop=4 smartindent noexpandtab sw=4 sts=4
    autocmd FileType go highlight WhiteSpace guifg=#3a3a3a

    autocmd FileType go nmap <leader>b <Plug>(go-build)
    autocmd FileType go nmap <leader>r <Plug>(go-run)
    autocmd FileType go nmap <leader>t <Plug>(go-test)
    autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
    autocmd FileType go nmap <Leader>i <Plug>(go-info)

    autocmd FileType go nmap K <Plug>(go-doc)

    autocmd Filetype go command! -bang A  call go#alternate#Switch(<bang>0, 'edit')
    autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
    autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
    autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
  augroup END

  augroup gitconfig
    autocmd!
    autocmd FileType gitconfig setlocal tabstop=4 smartindent noexpandtab
  augroup END

  augroup makefile
    autocmd!
    autocmd FileType make setlocal noexpandtab shiftwidth=8 softtabstop=0
  augroup END

endif
