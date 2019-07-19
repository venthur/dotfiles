" preferred width for text is 72, for code 79!
setlocal textwidth=72
" we don't autowrap code, only text stuff
setlocal formatoptions-=t

" sytastic uses python which currently points to python2 -- this causes
" some syntax errors
" let g:syntastic_python_exec = "/usr/bin/python3"

autocmd BufWritePre <buffer> call TrimWhiteSpace()

fun! TrimWhiteSpace()
    let cursor_pos = getpos('.')
    silent! %s/\s\+$//
    call setpos('.', cursor_pos)
endfunction
