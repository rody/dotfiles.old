if exists('g:plugs["neosnippet"]')
  " For conceal markers.
  if has('conceal')
    set conceallevel=2 concealcursor=niv
  endif

  let g:neosnippet#snippets_directory='~/.config/nvim/neosnippets'
  let g:neosnippet#enable_completed_snippet = 1

  imap <C-k>     <Plug>(neosnippet_expand_or_jump)
  smap <C-k>     <Plug>(neosnippet_expand_or_jump)
  xmap <C-k>     <Plug>(neosnippet_expand_target)
endif
