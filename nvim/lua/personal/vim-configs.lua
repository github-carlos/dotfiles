-- basic configs
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set scrolloff=8")
vim.cmd("set cursorline")
vim.o.clipboard = 'unnamedplus'

-- disable swap files
vim.o.swapfile = false

-- Set highlight on search
vim.o.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
