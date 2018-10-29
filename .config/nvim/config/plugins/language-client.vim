if exists('g:plugs["LanguageClient-neovim"]')
  " Automatically start language servers.
  let g:LanguageClient_autoStart = 1

  nnoremap <F5> :call LanguageClient_contextMenu()<CR>
  nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
  nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
  nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

  " let g:LanguageClient_loggingLevel = 'DEBUG'
  let g:LanguageClient_serverCommands = {}

  " Minimal LSP configuration for JavaScript
  if executable('javascript-typescript-stdio')
    let g:LanguageClient_serverCommands.javascript = ['/usr/local/bin/javascript-typescript-stdio']
    let g:LanguageClient_serverCommands['javascript.jsx'] = ['/usr/local/bin/javascript-typescript-stdio']
    let g:LanguageClient_serverCommands.typescript = ['/usr/local/bin/javascript-typescript-stdio']
  else
    echo "javascript-typescript-stdio not installed!\n"
  endif

  if executable('css-languageserver')
    let g:LanguageClient_serverCommands.css = ['/usr/local/bin/css-languageserver --stdio']
    let g:LanguageClient_serverCommands.less = ['/usr/local/bin/css-languageserver --stdio']
    let g:LanguageClient_serverCommands.sass = ['/usr/local/bin/css-languageserver --stdio']
  else
    echo "CSS language server was not found, you can install it with: npm install --global vscode-css-languageserver-bin\n"
  endif

  if executable('html-languageserver')
    let g:LanguageClient_serverCommands.html = ['/usr/local/bin/html-languageserver', '--stdio']
  else
    echo "CSS language server was not found, you can install it with: npm install --global vscode-html-languageserver-bin\n"
  endif

  "if executable('go-langserver')
  "  let g:LanguageClient_serverCommands.go = ['/Users/rody/go/bin/go-langserver']
  "else
  "  echo 'go-langserver not installed!\n'
  "endif
endif
