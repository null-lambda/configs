-- Disable default file browser at the beginning
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

return {
  -- Display possible keys
  { "folke/which-key.nvim",
    lazy = false,
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup()
    end
  },

  -- Color scheme
  { 'ellisonleao/gruvbox.nvim',
    config = function()
      vim.cmd([[colorscheme gruvbox]])
    end
  },

  -- Common keymaps
  'tpope/vim-commentary',
  'tpope/vim-surround',
  -- 'justinmk/vim-sneak',
  
  -- Auto Indent Detection
  { 'NMAC427/guess-indent.nvim',
    config = function() 
      require('guess-indent').setup()
    end,
  },

  -- File explorer 
  { 'nvim-tree/nvim-tree.lua',
     dependencies = { 'nvim-tree/nvim-web-devicons' }, -- optional, for file icons
     config = function() 
         require("nvim-tree").setup()
     end,
     keys = {
       { "<leader>n", "<cmd>NvimTreeToggle<cr>", desc = "NvimTree" },
     },
  },

  -- External tooling manager
  { 'williamboman/mason.nvim',
    config = function() 
      require('mason').setup()
    end
  },

  -- Browser supports (requires browser specific extensions) 
  { 'glacambre/firenvim',
     -- Lazy load firenvim
     -- Explanation: https://github.com/folke/lazy.nvim/discussions/463#discussioncomment-4819297
     cond = not not vim.g.started_by_firenvim,
     build = function()
         require("lazy").load({ plugins = "firenvim", wait = true })
         vim.fn["firenvim#install"](0)
     end
  },

  -- Below here goes language specific ones
  -- 
  -- Tex
  { 'lervag/vimtex',
    lazy = false,
    config = function() 
      vim.g.vimtex_view_method = 'zathura'
      vim.g.maplocalleader = ','
    end 
  }
}
