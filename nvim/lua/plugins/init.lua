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

  -- Fuzzy search
  { 'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    dependencies = { 
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-fzf-native.nvim',
    },
    keys = {
      { '<leader>t', '<cmd>Telescope builtin<cr>', desc = 'Telescope'  },
      { '<leader>p', '<cmd>Telescope commands<cr>', desc = 'Commands'  },
      { '<leader>o', '<cmd>Telescope find_files<cr>', desc = 'Find Files' },
      { '<leader>r', '<cmd>Telescope oldfiles<cr>', desc = 'Recent Files' },
      { '<leader>k', '<cmd>Telescope keys<cr>', desc = 'Keymaps' },
    },
    config = function()
      local map = vim.keymap.set
      require 'telescope'.setup {
        pickers = {
          find_files = {
            -- theme = "dropdown",
          }
        },
      }
    end
  },
  { 'nvim-telescope/telescope-fzf-native.nvim',
     build = "make",
     config = function()
       require 'telescope'.load_extension 'fzf'
     end
  },

  ----
  --{ 'nvim-treesitter/nvim-treesitter', 
  --  build = function() 
  --    vim.cmd(':TSUpdate')
  --  end 
  --}
  --
}
