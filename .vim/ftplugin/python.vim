"setlocal makeprg=pyflakes\ %
setlocal makeprg=pylint\ --reports=n\ --output-format=parseable\ %
setlocal textwidth=72 " preferred wrapping for long block of texts like comments or docstrings
setlocal shiftwidth=4
setlocal tabstop=4
setlocal expandtab
setlocal softtabstop=4
setlocal shiftround
setlocal colorcolumn=80 " 79 preferred wraping for code
setlocal formatoptions=cq
setlocal nowrap
setlocal nonumber

" Use either that or pymode_folding
setlocal foldmethod=indent

autocmd BufWritePre <buffer> call TrimWhiteSpace()
"autocmd QuickFixCmdPost <buffer> call Qfsigns()
"autocmd BufWritePost <buffer> call CheckErrors()

fun! TrimWhiteSpace()
    let cursor_pos = getpos('.')
    silent! %s/\s\+$//
    call setpos('.', cursor_pos)
endfunction

fun! CheckErrors()
    execute 'make'
    call Qfsigns()
endfunction

fun! Qfsigns()
    execute 'sign define SIGN text=??'

    for item in filter(getqflist(), 'v:val.bufnr != ""')
        " execute printf('echo "sign place %d line=%d name=%s buffer=%d"', item.lnum, item.lnum, item.type, item.bufnr)
        execute printf('sign place %d line=%d name=SIGN%s buffer=%d', item.lnum, item.lnum, item.type, item.bufnr)
    endfor
endfunction

" TODO: signs (sidebar with errors from pyflakes)
"
