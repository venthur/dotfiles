setlocal shiftwidth=4
setlocal tabstop=4
setlocal expandtab
setlocal softtabstop=4

autocmd BufWritePre <buffer> call TrimWhiteSpace()

fun! TrimWhiteSpace()
    let cursor_pos = getpos('.')
    silent! %s/\s\+$//
    call setpos('.', cursor_pos)
endfunction

