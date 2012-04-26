function! FocusProto()
  vimgrep /\vfunction\s+[^(]+\s*\(/ %
  copen
  buffer "[Quickfix List]"
  noremap <buffer> <silent> <enter> <enter>mpzE'pkzfgg'p/{<cr>%jzfG`p
endfunction
nnoremap <silent> <leader>ns :call FocusProto()<cr> 
