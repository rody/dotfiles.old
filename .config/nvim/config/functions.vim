function! TrimTrailingWhitespace()
  let l:pos = getpos('.')
  %s/\s\+$//e
  call setpos('.', l:pos)
endfunction

