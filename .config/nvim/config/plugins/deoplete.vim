if exists('g:plugs["deoplete.nvim"]')

  " disable autocomplete by default
  let b:deoplete_disable_auto_complete=1
  let g:deoplete_disable_auto_complete=1

  " let g:deoplete#enable_profile = 1
  " call deoplete#enable_logging('DEBUG', 'deoplete.log')
  let g:deoplete#enable_at_startup = 1
endif

