local keymap = vim.keymap.set

local opts = { silent = true, noremap = true }

vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

-- Split navigation
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

