local keymap = vim.keymap.set
local builtin = require('telescope.builtin')

local opts = { silent = true, noremap = true }

vim.g.mapleader = "\\"

keymap('n', '<C-p>', builtin.find_files, opts)
