if exists('g:plugs["vim-go"]')
  " let g:go_list_type = 'quickfix'  " use quickfix instead of location list
  "
  let g:go_jump_to_error = 1

  let g:go_auto_type_info = 0
  let g:go_auto_sameids = 0

  let g:go_fmt_command = "goimports"

  let g:go_highlight_types = 1
  let g:go_highlight_functions = 1
  let g:go_highlight_fields = 1
  let g:go_highlight_function_calls = 0
  let g:go_highlight_operators = 0
  let g:go_highlight_extra_types = 1
  let g:go_highlight_build_constraints = 1

  let g:go_metalinter_autosave = 0
  let g:go_metalinter_deadline = "5s"
endif
