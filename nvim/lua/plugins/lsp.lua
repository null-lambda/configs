-- Auto-completion
return {
  { 
    'williamboman/mason.nvim',
    ops = {
      ensure_installed = {
      }
    },
    dependencies = {
      -- 'mason-lspconfig'
    },
    config = function()
      require('mason').setup()
      -- require('mason-lspconfig').setup({
      --   ensure_installed = {
      --     -- Replace these with whatever servers you want to install
      --     'rust_analyzer',
      --   }
      -- })
    end
  },
  -- { 'github/copilot.vim' },
  -- {
  --   "zbirenbaum/copilot.lua",
  --   cmd = "Copilot",
  --   event = "InsertEnter",
  --   config = function()
  --     require("copilot").setup({
  --       panel = {
  --       },
  --       suggestion = {
  --         auto_trigger = true,  
  --         debounce = 50,
  --         keymap = {
  --           accept = "<TAB>",
  --           -- accept_word = true,
  --           -- accept_line = true,
  --           next = "<A-]>",
  --           prev = "<A-[>",
  --           dismiss = "<Esc>",
  --         }
  --       }
  --     })
  --   end,
  -- },
  -- { "hrsh7th/nvim-cmp",
  --   config = function() 
  --     -- Setup cmp
  --     local cmp = require("cmp")
  --     cmp.setup({
  --       mapping = cmp.mapping.preset.insert({ -- Preset: ^n, ^p, ^y, ^e, you know the drill..
  --         ["<C-d>"] = cmp.mapping.scroll_docs(-4),
  --         ["<C-u>"] = cmp.mapping.scroll_docs(4),
  --         ['<C-Space>'] = cmp.mapping.complete(),
  --         ['<C-e>'] = cmp.mapping.abort(),
  --         ['<CR>'] = cmp.mapping.confirm({ select = true }),
  --       }),
  --       snippet = {
  --         expand = function(args)
  --           require("luasnip").lsp_expand(args.body)
  --         end,
  --       },
  --       sources = cmp.config.sources({
  --         { name = "nvim_lsp" },
  --         { name = "nvim_lsp_signature_help" },
  --         { name = "nvim_lua" },
  --         { name = "luasnip" },
  --         { name = "path" },
  --       }, {
  --         { name = "buffer", keyword_length = 3 },
  --       }),
  --     })
  --   end
  -- },
  -- { "hrsh7th/cmp-buffer" },
  -- { "hrsh7th/cmp-nvim-lua" },
  -- { "hrsh7th/cmp-nvim-lsp" },
  -- { "hrsh7th/cmp-nvim-lsp-signature-help" },
  -- { "hrsh7th/cmp-path" },
  -- { "neovim/nvim-lspconfig" },
  -- { "L3MON4D3/LuaSnip", 
  --   config = function() 
  --     local ls = require("luasnip")
  --     vim.keymap.set({ "i", "s" }, "<C-k>", function()
  --       if ls.expand_or_jumpable() then
  --         ls.expand_or_jump()
  --       end
  --     end, { silent = true })

  --     vim.keymap.set({ "i", "s" }, "<C-j>", function()
  --       if ls.jumpable(-1) then
  --         ls.jump(-1)
  --       end
  --     end, { silent = true })

  --     vim.keymap.set("i", "<C-l>", function()
  --       if ls.choice_active() then
  --         ls.change_choice(1)
  --       end
  --     end)
  --   end
  -- },
  -- { "saadparwaiz1/cmp_luasnip" },
}
