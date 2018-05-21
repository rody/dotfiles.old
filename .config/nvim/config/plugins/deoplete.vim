if exists('g:plugs["deoplete.nvim"]')
  let g:deoplete#enable_at_startup = 1
  let g:deoplete#enable_ignore_case = 1
  let g:deoplete#enable_smart_case = 1
  let g:deoplete#enable_camel_case = 1
  let g:deoplete#enable_refresh_always = 1
  let g:deoplete#max_abbr_width = 0
  let g:deoplete#max_menu_width = 0

  let g:deoplete#sources#rust#racer_binary='/usr/local/bin/racer'
  let g:deoplete#sources#rust#rust_source_path='/usr/local/share/rust/rust_src/'

  let g:deoplete#omni#input_patterns = get(g:,'deoplete#omni#input_patterns',{})
  let g:deoplete#omni#functions = {}
  let g:deoplete#omni#functions.javascript = [ 'tern#Complete', 'jspc#omni']
  let g:deoplete#omni#functions.html = [ 'htmlcomplete#CompleteTags', 'emmet#completeTag']
  call deoplete#custom#source('_', 'matchers', ['matcher_full_fuzzy'])
endif

