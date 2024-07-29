vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Save
vim.keymap.set('n', '<leader>wq', ':wq<CR>')
vim.keymap.set('n', '<C-s>', ':w<CR>')
vim.keymap.set('n', '<leader>q1', ':q!<CR>')

-- Window Navigate
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- File Navigation
vim.keymap.set('n', '<leader>b', vim.cmd.Ex)

vim.keymap.set('n', '<C-]>', '%')
vim.keymap.set('n', '<leader><CR>', 'i<CR><ESC>')
vim.keymap.set('n', '<leader><BS>', 'i<BS><ESC>')
vim.keymap.set('i', '<C-j>', '<down>', {noremap = true, silent = true})
vim.keymap.set('i', '<C-h>', '<left>', {noremap = true, silent = true})
vim.keymap.set('i', '<C-k>', '<up>', {noremap = true, silent = true})
vim.keymap.set('i', '<C-l>', '<right>', {noremap = true, silent = true})
