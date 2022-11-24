""" GUI improvements
set termguicolors

set shortmess+=I        " Don't show greeting screen when starting vim w/o file
set mouse=a             " Enable mouse for all modes

set completeopt=longest,menuone,preview

set wildmode=longest:full,full  " do full completion on second keystroke

" open new split panes to right and bottom
set splitright
set splitbelow

set autowrite           " Automatically save before commands like :next and :make

" Searching
set ignorecase          " Do case insensitive matching...
set smartcase           " ... but respect case if used

set nowrap              " Don't wrap lines

""display tabs and trailing spaces
set list

"" Tabs
set expandtab           " Tabs to Spaces
set softtabstop=4       " Fake Tabs feel like real ones when editing
set shiftwidth=4        " A Tab equals 4 spaces
set shiftround          " round indent (i.e. < >) to multiple of shiftwidth

set textwidth=79

"" Proper Clipboard integration
set clipboard=unnamedplus

""" Spelling
set spell

set cursorline         " Draw a cursorline (makes redrawing slower)

""" Misc
"packadd! gnupg
"
"" netrw options
"let g:netrw_banner=0        " disable banner
"let g:netrw_liststyle=3     " tree view

" syntastic options
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1
let g:syntastic_python_checkers = ["python", "flake8", "mypy"]
