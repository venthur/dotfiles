" preferred width for text is 72, for code 79!
" we usually don't autoformat code, so...
set textwidth=72
set formatoptions-=t

autocmd BufWritePre <buffer> call TrimWhiteSpace()

fun! TrimWhiteSpace()
    let cursor_pos = getpos('.')
    silent! %s/\s\+$//
    call setpos('.', cursor_pos)
endfunction
