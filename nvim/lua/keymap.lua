local map = vim.keymap.set

-- Custom key bindings

map('i', 'jk', '<Esc>')
map('i', 'kj', '<Esc>')

vim.g.mapleader = ','

map('n', '<C-h>', '<C-w>h', { desc = 'Move to window - Left' })
map('n', '<C-j>', '<C-w>j', { desc = 'Move to window - Down' })
map('n', '<C-k>', '<C-w>k', { desc = 'Move to window - Up' })
map('n', '<C-l>', '<C-w>l', { desc = 'Move to window - Right' })

map('n', '<C-Left>', '<cmd>vertical resize -2<cr>', { desc = 'Window width--' })
map('n', '<C-Down>', '<cmd>resize -1<cr>', { desc = 'Window height--' })
map('n', '<C-Up>', '<cmd>resize +1<cr>', { desc = 'window height++' })
map('n', '<C-Right>', '<cmd>vertical resize +2<cr>', { desc = 'window width++' })

map('n', '?', '<cmd>WhichKey<cr>')

map('n', '<C-/>', '<cmd>nohl<cr>', { desc = 'nohlsearch' })
