vim.g.mapleader = " "

-- Save
vim.keymap.set('n', '<leader>wq', ':wq<CR>')
vim.keymap.set('n', '<C-s>', ':w<CR>')

-- Window Navigate
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- File Navigation
vim.keymap.set('n', '<C-b>', vim.cmd.Ex)