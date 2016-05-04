function! s:isSman()
  let filepath = expand("%:p")
  if filepath =~ '\v/snippets/.*\.yml$' | return 1 | en
  return 0
endfunction

:au BufNewFile,BufRead * if s:isSman() | set ft=sman | en
