vim.o.number = true
vim.o.cursorline = true
vim.o.wrap = false

vim.g.mapleader = ','
vim.api.nvim_set_keymap('n', '<C-h>', '<cmd>wincmd h<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<cmd>wincmd j<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<cmd>wincmd k<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<cmd>wincmd l<cr>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<A-S-Left>', '<cmd>vertical resize -5<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-S-Right>', '<cmd>vertical resize +5<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-S-Up>', '<cmd>resize +5<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-S-Down>', '<cmd>resize -5<cr>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Left>', '<cmd>vertical resize -1<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Right>', '<cmd>vertical resize +1<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Up>', '<cmd>resize +1<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Down>', '<cmd>resize -1<cr>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'gh', '20zh', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gl', '20zl', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'gh', '20zh', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'gl', '20zl', { noremap = true, silent = true })
