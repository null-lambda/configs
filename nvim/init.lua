-- " " Compatibility with vim
-- " set runtimepath+=~/.vim,~/.vim/after
-- " set packpath+=~/.vim
-- " source ~/.vimrc
-- 
-- nah im done with these old vimmy life

-- Below here goes neovim-only settings
require("keymap")
require("internals")
require("bootstrap-lazy")
require("lazy").setup("plugins")

-- " Return to last edit position when opening files 
-- au BufReadPost *
--       \ if line("'\"") > 0 && line("'\"") <= line("$") |
--       \   exe "normal! g`\"" |
--       \ endif
