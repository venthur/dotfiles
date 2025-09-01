-- GUI improvements
-- Don't show greeting screen when starting vim w/o file
vim.o.shortmess = vim.o.shortmess .. 'I'

vim.o.completeopt = 'longest,menuone,preview'
-- do full completion on second keystroke
vim.o.wildmode = 'longest:full,full'

-- open new split panes to right and bottom
vim.o.splitright = true
vim.o.splitbelow = true

-- Automatically save before commands like :next and :make
vim.o.autowrite = true

-- Searching
-- Do case insensitive matching...
vim.o.ignorecase = true
-- ... but respect case if used
vim.o.smartcase = true

-- preview substitutions as you type
vim.o.inccommand = 'split'

-- Don't wrap lines
vim.o.wrap = false

--display tabs and trailing spaces
vim.o.list = true

-- Tabs
-- Tabs to Spaces
vim.o.expandtab = true
-- Fake Tabs feel like real ones when editing
vim.o.softtabstop = 4
-- A Tab equals 4 spaces
vim.o.shiftwidth = 4
-- round indent (i.e. < >) to multiple of shiftwidth
vim.o.shiftround = true

-- set to 80, maybe you want to set it to 79 in ftplugin/python.lua
vim.o.textwidth = 80
-- one column after textwidth
vim.o.colorcolumn = '+1'

-- Proper Clipboard integration
vim.o.clipboard = 'unnamedplus'

---- Spelling
vim.o.spell = true

-- Draw a cursorline (makes redrawing slower)
vim.o.cursorline = true

vim.o.scrolloff = 1
vim.o.sidescrolloff = 2

-- Use space as leader key
vim.g.mapleader = ' '
vim.g.localleader = ' '

---- Misc
--packadd! gnupg
--
-- netrw options
-- let g:netrw_banner=0        -- disable banner

vim.cmd('packadd! fzf.vim')
-- packadd! ale
-- vim.cmd('packadd! ale')

--let g:ale_virtualtext_cursor = 0

-- source the fzf.vim plugin
vim.cmd.source('/usr/share/doc/fzf/examples/plugin/fzf.vim')


vim.keymap.set('n', '<leader>f', ':Files<CR>', { silent = true })
vim.keymap.set('n', '<leader>/', ':RG<CR>', { silent = true })
-- toggle colorcolumn
vim.keymap.set(
    'n',
    '<leader>c',
    function()
        vim.o.colorcolumn = (vim.o.colorcolumn == '' and '+1' or '')
    end,
    { silent = True }
)
