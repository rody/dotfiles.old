" Install Vim Plug if not installed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync
endif

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')
  " Make sure you use single quotes

  " UI {{{
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'scrooloose/nerdtree'

  " Diff {{{
  Plug 'chrisbra/vim-diff-enhanced'

  " Linting / Formating {{{
  Plug 'w0rp/ale'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'junegunn/vim-easy-align'

  " Autocomplete {{{
  Plug 'roxma/nvim-completion-manager'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'fszymanski/deoplete-emoji'

  " Snippets {{{
  Plug 'Shougo/neosnippet'
  Plug 'Shougo/neosnippet-snippets'

  " Git {{{
  Plug 'tpope/vim-fugitive'

  " Helpers
  Plug 'tpope/vim-surround'

  " Javascript {{{
  if executable('npm')
    Plug 'ternjs/tern_for_vim' , { 'do': 'npm install && npm install tern' , 'for': ['javascript', 'javascript.jsx'] }
  endif
  Plug 'carlitux/deoplete-ternjs' ", { 'for': ['javascript', 'javascript.jsx'] }
  Plug 'wokalski/autocomplete-flow'
  Plug 'othree/jspc.vim' ", { 'for': ['javascript', 'javascript.jsx'] }
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'

  " Typescript
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'mhartington/nvim-typescript'

  " HTML {{{
  Plug 'othree/html5.vim'
  Plug 'mattn/emmet-vim'

  " CSS {{{
  Plug 'othree/csscomplete.vim'

  " Golang {{{
  Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
  Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }

  " JSON {{{
  Plug 'elzr/vim-json'

  " Concourse Pipeline {{{
  Plug 'luan/vim-concourse'

  " Colorschemes {{{
  Plug 'mhartington/oceanic-next'

  " AntlR {{{
  Plug 'jrozner/vim-antlr'

  " Comments
  Plug 'scrooloose/nerdcommenter'

  " Jenkinsfile
  Plug 'martinda/Jenkinsfile-vim-syntax'

" Initialize plugin system
call plug#end()

filetype indent plugin on
syntax on

source ~/.config/nvim/config/plugins/deoplete.vim
source ~/.config/nvim/config/plugins/tern_for_vim.vim
source ~/.config/nvim/config/plugins/ale.vim
source ~/.config/nvim/config/plugins/neosnippet.vim
source ~/.config/nvim/config/plugins/html5.vim
source ~/.config/nvim/config/plugins/vim-jsx.vim
source ~/.config/nvim/config/plugins/nerdtree.vim
source ~/.config/nvim/config/plugins/fzf.vim

