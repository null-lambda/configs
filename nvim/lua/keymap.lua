
local map = vim.keymap.set
local defaults = { noremap = true, silent = true }

-- Custom key bindings
vim.api.nvim_exec([[
inoremap jk <Esc>
inoremap kj <Esc>

let mapleader = ","

" Movement between split windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <leader>w :WhichKey<CR>
]], false)

