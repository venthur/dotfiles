" preferred width for text is 72, for code 79!
set textwidth=72
" we don't autowrap code, only text stuff
set formatoptions-=t

autocmd BufWritePre <buffer> call TrimWhiteSpace()

fun! TrimWhiteSpace()
    let cursor_pos = getpos('.')
    silent! %s/\s\+$//
    call setpos('.', cursor_pos)
endfunction
