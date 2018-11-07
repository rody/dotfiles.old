syntax on

" Enable 256 color terminal
set t_Co=256

" Enable truecolors if available
if has('nvim') || has('termguicolors')
  set termguicolors
endif

" default colorscheme
colorscheme desert

if exists('g:plugs["onedark"]')
  " onedark.vim override: Don't set a background color when running in a terminal;
  " just use the terminal's background color
  " `gui` is the hex color code used in GUI mode/nvim true-color mode
  " `cterm` is the color code used in 256-color mode
  " `cterm16` is the color code used in 16-color mode
  if (has("autocmd") && !has("gui_running"))
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
  "    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " No `bg` setting
  end
  let g:onedark_terminal_italics = 1
  colorscheme onedark
endif

if exists('g:plugs["oceanic-next"]')
  let g:oceanic_next_terminal_bold = 1
  let g:oceanic_next_terminal_italic = 1
  colorscheme OceanicNext
endif

highlight WhiteSpace guifg=#343c41

" hide 'end of buffer' char (~)
highlight EndOfBuffer guifg=bg ctermfg=bg
