
local set = vim.opt

set.encoding = 'utf-8'

set.backup = false
set.writebackup = false
set.shortmess = 'AIT' -- Turn off annoying swapfile errors on file load

set.autowrite = true -- Auto save file
set.autoread = true 

-- set.clipboard:append { 'unnamed', 'unnamedplus' } -- just y, p to use clipboard 

set.updatetime = 300

-- Layout
set.signcolumn = 'yes'
set.number = true -- Line number
set.list = true
set.laststatus = 0
set.showmode = false -- Turn off mode display on statusline


set.history = 1000 -- Command history
set.undofile = true -- Undo even after restarting the nvim
set.undolevels = 1000 

set.mouse = '' -- Disable mouse
-- set.mousescroll = 'ver:0,hor:0' -- Disable mouse scrolling

-- Indentation
-- set.autoindent = true
set.smartindent = true
-- set.cindent
--
set.wrap = false

set.tabstop = 4
set.shiftwidth = 4
set.expandtab = true

-- Highlighting
set.hlsearch = true
set.showmatch = true
set.ignorecase = true
set.incsearch = true

