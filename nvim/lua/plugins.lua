-- Bootstrap package manager (lazy.nvim)
-- requirements: git, some fancy unicode fonts (check github link!)
-- https://github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Todo: check its docs 
  { "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup({})
    end,
  },
  -- Color scheme
  'morhetz/gruvbox',
  -- Status Bar at bottom
  { 'ojroques/nvim-hardline',
    config = function() require('hardline').setup({}) end
  },
  -- File explorer 
  -- unset
  -- Common keymaps
  'tpope/vim-commentary',
  'tpope/vim-surround',
  -- 'justinmk/vim-sneak',
})



-- Todo: configure lsp for web dev (js, jsx, ts, tsx, css, scss, html, json, ...)
-- Todo: configure markdown and latex dev env:
--   live preview, syntax highlighting, internal lsp, etc...
-- Todo: convert vim-plug plugin list for lazy.nvim
--[[
   " latex configuration
    Plug 'lervag/vimtex'
    Plug 'tpope/vim-dispatch'
    " Plug 'SirVer/ultisnips'
    "   let g:UltiSnipsSnippetDirectories=["UltiSnips"]
    "   let g:UltiSnipsExpandTrigger       = '<Tab>'    " use Tab to expand snippets
    "   let g:UltiSnipsJumpForwardTrigger  = '<Tab>'    " use Tab to move forward through tabstops
    "   let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'  " use Shift-Tab to move backward through tabstops

    " ## Plugin-Specific keymaps
    " NerdTree
    nnoremap <leader>n :NERDTreeToggle<CR>
    " nnoremap <C-F> :NERDTreeFind<CR>
end 
]]
