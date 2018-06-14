if exists('g:plugs["ale"]')
  let g:ale_fixers = {
        \ 'javascript': ['eslint'],
        \ 'css': ['prettier'],
        \ 'typescript': ['tslint'],
        \ }

  let g:ale_linters = {
        \ 'rust': ['cargo'],
        \ 'typescript': ['tslint']
        \ }

  let g:ale_sign_error = '✖︎'
  let g:ale_sign_warning = '▲'
  hi link ALEErrorSign    Error
  hi link ALEWarningSign  Warning
endif

