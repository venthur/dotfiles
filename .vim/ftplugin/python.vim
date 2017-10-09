autocmd BufWritePre <buffer> call TrimWhiteSpace()

fun! TrimWhiteSpace()
    let cursor_pos = getpos('.')
    silent! %s/\s\+$//
    call setpos('.', cursor_pos)
endfunction
