-- Custom key bindings
vim.g.mapleader = ' '
vim.g.maplocalleader = ','

lvim.keys.insert_mode = {
    jk = '<Esc>',
    kj = '<Esc>',
}

lvim.keys.normal_mode = {
    ['<C-h>'] = '<C-w>h',
    ['<C-j>'] = '<C-w>j',
    ['<C-k>'] = '<C-w>k',
    ['<C-l>'] = '<C-w>l',

    ['<C-Left>'] = '<cmd>vertical resize -2<cr>',
    ['<C-Down>'] = '<cmd>resize -1<cr>',
    ['<C-Up>'] = '<cmd>resize +1<cr>',
    ['<C-Right>'] = '<cmd>vertical resize +2<cr>',

    ['?'] = '<cmd>nohl<cr>',
}

-- lvim.keys.normal_mode = {
--     { '<C-h>',     '<C-w>h',                      { desc = 'Move to window - Left' } },
--     { '<C-j>',     '<C-w>j',                      { desc = 'Move to window - Down' } },
--     { '<C-k>',     '<C-w>k',                      { desc = 'Move to window - Up' } },
--     { '<C-l>',     '<C-w>l',                      { desc = 'Move to window - Right' } },

--     { '<C-Left>',  '<cmd>vertical resize -2<cr>', { desc = 'Window width--' } },
--     { '<C-Down>',  '<cmd>resize -1<cr>',          { desc = 'Window height--' } },
--     { '<C-Up>',    '<cmd>resize +1<cr>',          { desc = 'window height++' } },
--     { '<C-Right>', '<cmd>vertical resize +2<cr>', { desc = 'window width++' } },

--     { '<leader>?', '<cmd>WhichKey<cr>' },
--     { '?',         '<cmd>nohl<cr>',               { desc = 'nohlsearch' } },
-- }
