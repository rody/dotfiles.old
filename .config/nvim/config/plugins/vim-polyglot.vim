if exists('g:plugs["vim-polyglot"]')
  " fix incompatibilities with vim-go, see https://github.com/fatih/vim-go/issues/2045
  let g:polyglot_disabled = ['go']
endif
