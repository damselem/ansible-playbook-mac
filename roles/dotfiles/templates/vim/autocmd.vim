if has("autocmd")
  augroup io_operations
    autocmd!

    " Strip trailing white spaces when opening a file or creating a new file
    autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

    autocmd BufRead,BufNewFile *.es6 setl filetype=javascript
    autocmd BufRead,BufNewFile *.hamlc setl filetype=haml
    autocmd BufRead,BufNewFile *.json setl filetype=json
    autocmd BufRead,BufNewFile *.jst setl filetype=html
    autocmd BufRead,BufNewFile *.md setl filetype=markdown
    autocmd BufRead,BufNewFile *.pp setl filetype=conf

    autocmd BufRead,BufNewFile *.es6
      \ let b:neomake_javascript_enabled_makers = ['eslint']

    autocmd BufRead,BufNewFile *.js
      \ let b:neomake_javascript_enabled_makers = ['jshint']
  augroup END

  augroup file_type_settings
    autocmd!

    autocmd FileType go setl nolist sw=8 ts=8
    autocmd FileType gitcommit setl tw=72
  augroup END

  augroup file_type_mappings
    autocmd!

    " Run CSScomb in the current file
    autocmd FileType scss,css nnoremap <buffer> <leader>f :call CSScomb()<CR>
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

function! CSScomb()
  execute "silent !csscomb " . expand('%:p')
  redraw!
endfunction
