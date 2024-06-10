-- Disable default file browser at the beginning
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

return {
  -- Display possible keys
  { "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 500
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
      require 'telescope'.load_extension 'fzf'
    end
  },
  { 'nvim-telescope/telescope-fzf-native.nvim',
     build = "make",
     lazy = true
  },

  ----
  --{ 'nvim-treesitter/nvim-treesitter', 
  --  build = function() 
  --    vim.cmd(':TSUpdate')
  --  end 
  --}
  --

  -- Snippets
  { "L3MON4D3/LuaSnip",
    version = "1.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    build = "make install_jsregexp",
    config = function() 
      vim.cmd[[
      " Use Tab to expand and jump through snippets
      imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
      smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

      " Use Shift-Tab to jump backwards through snippets
      imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
      smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
      ]]

      require("luasnip.loaders.from_lua").lazy_load({ paths = { "./snippets" } })
      require("luasnip").config.set_config {
        enable_autosnippets = true, 
        store_selection_keys = "<Tab>", -- Trigger visual selection
        update_events = 'TextChanged,TextChangedI', -- Update repeated nodes while typing
      }
    end,
  },
}
