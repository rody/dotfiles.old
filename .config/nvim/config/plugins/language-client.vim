" nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
" nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" Automatically start language servers.
let g:LanguageClient_autoStart = 1

" Minimal LSP configuration for JavaScript
let g:LanguageClient_serverCommands = {}

if executable('javascript-typescript-stdio')
  let g:LanguageClient_serverCommands.javascript = ['javascript-typescript-stdio']
  let g:LanguageClient_serverCommands.typescript = ['javascript-typescript-stdio']
  " Use LanguageServer for omnifunc completion
  autocmd FileType javascript setlocal omnifunc=LanguageClient#complete
else
  echo "javascript-typescript-stdio not installed!\n"
  :cq
endif

if executable('go-langserver')
  let g:LanguageClient_serverCommands.go = ['go-langserver']
  " Use LanguageServer for omnifunc completion
  autocmd FileType go setlocal omnifunc=LanguageClient#complete
else
  echo "go-langserver not installed!\n"
  :cq
endif
