if exists('g:plugs["deoplete.nvim"]')
  let g:deoplete#enable_at_startup = 1

  call deoplete#custom#option({
        \ 'camel_case': v:true,
        \ 'smart_case': v:true,
        \ 'ignore_case': v:true,
        \})




  "call deoplete#custom#option('profile', v:true)
  "call deoplete#enable_logging('DEBUG', 'deoplete.log')
  " call deoplete#custom#source('LanguageClient', 'is_debug_enabled', 1)
endif

