autocmd Filetype tex setlocal makeprg=pdflatex\ -interaction=nonstopmode\ -file-line-error\ %

setlocal wildignore=*.aux,*.pdf,*.log
