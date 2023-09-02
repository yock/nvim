local keymap = vim.keymap.set
local telescope = require('telescope.builtin')

local opts = { silent = true, noremap = true }

vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

-- Overseer
keymap('n', '<Leader>tt', ':OverseerToggle<CR>', opts)
keymap('n', '<Leader>tr', ':OverseerRun<CR>', opts)

-- Telescope
keymap('n', '<Leader>ff', telescope.find_files, opts)
keymap('n', '<Leader>fg', telescope.live_grep, opts)
keymap('n', '<Leader>fb', telescope.buffers, opts)
keymap('n', '<Leader>fh', telescope.help_tags, opts)
keymap('n', '<Leader>pp', telescope.planets, opts)

-- Split navigation
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)
