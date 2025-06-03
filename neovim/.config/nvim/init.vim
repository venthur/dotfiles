""" GUI improvements
set shortmess+=I        " Don't show greeting screen when starting vim w/o file

set completeopt=longest,menuone,preview

set wildmode=longest:full,full  " do full completion on second keystroke

" open new split panes to right and bottom
set splitright
set splitbelow

set autowrite           " Automatically save before commands like :next and :make

" Searching
set ignorecase          " Do case insensitive matching...
set smartcase           " ... but respect case if used

" preview substitutions as you type
set inccommand=split

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

set scrolloff=1
set sidescrolloff=2

" Use space as leader key
let mapleader = ' '
let localleader = ' '

""" Misc
"packadd! gnupg
"
"" netrw options
" let g:netrw_banner=0        " disable banner

packadd! ale

let g:ale_virtualtext_cursor = 0

" source the fzf.vim plugin
source /usr/share/doc/fzf/examples/plugin/fzf.vim

nmap <silent> <leader>f :Files<CR>
nmap <silent> <leader>/ :Rg<CR>
