if has("autocmd")
  augroup io_operations
    autocmd!

    " Strip trailing white spaces when opening a file or creating a new file
    autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

    autocmd BufRead,BufNewFile *.json setl filetype=json
    autocmd BufRead,BufNewFile *.jst setl filetype=html
    autocmd BufRead,BufNewFile *.md setl filetype=markdown
    autocmd BufRead,BufNewFile *.pp setl filetype=conf
  augroup END

  augroup file_type_settings
    autocmd!

    autocmd FileType go setl nolist sw=8 ts=8
    autocmd FileType gitcommit setl tw=72
  augroup END
else
  set autoindent
endif

function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
