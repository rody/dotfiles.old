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
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'fszymanski/deoplete-emoji'
  " Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }

  " splitjoin
  " Plug 'AndrewRadev/splitjoin.vim'

  " Display function signature in the command line after completion
  Plug 'Shougo/echodoc.vim'

  " Snippets {{{
  " Plug 'Shougo/neosnippet'
  " Plug 'Shougo/neosnippet-snippets'

  " Git {{{
  Plug 'tpope/vim-fugitive'

  " Helpers
  Plug 'tpope/vim-surround'

  " Javascript {{{
  if executable('npm')
    Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern'}
    Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
  endif
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'

  " Typescript
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }

  " HTML {{{
  Plug 'othree/html5.vim'
  Plug 'mattn/emmet-vim'

  " CSS {{{
  " Plug 'othree/csscomplete.vim'

  " Golang {{{
  if executable('go')
    Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
    Plug 'mdempsky/gocode', { 'rtp': 'nvim', 'do': '~/.local/share/nvim/plugged/gocode/nvim/symlink.sh' }
    Plug 'zchee/deoplete-go', { 'do': 'make'}
  endif

  " Rust {{{
  if executable('rustc')
    Plug 'rust-lang/rust.vim'
    Plug 'sebastianmarkow/deoplete-rust'
  endif

  " JSON {{{
  Plug 'elzr/vim-json'

  " Concourse Pipeline {{{
  " Plug 'luan/vim-concourse'

  " Colorschemes {{{
  Plug 'mhartington/oceanic-next'

  " AntlR {{{
  " Plug 'jrozner/vim-antlr'

  " Comments
  Plug 'scrooloose/nerdcommenter'

  " Jenkinsfile
  " Plug 'martinda/Jenkinsfile-vim-syntax'

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
source ~/.config/nvim/config/plugins/language-client.vim
source ~/.config/nvim/config/plugins/vim-diff-enhanced.vim
source ~/.config/nvim/config/plugins/vim-go.vim
source ~/.config/nvim/config/plugins/oceanic-next.vim

