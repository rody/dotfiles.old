if exists('g:plugs["limelight.vim"]')
  if exists('g:plugs["goyo.vim"]')
    autocmd! User GoyoEnter Limelight
    autocmd! User GoyoLeave Limelight!
  endif
endif
