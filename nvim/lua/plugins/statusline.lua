return {
  -- Status Bar at bottom
  -- { 'ojroques/nvim-hardline',
  --  config = function() require('hardline').setup() end
  -- },
  { 'nvim-lualine/lualine.nvim',
    config = function() 
    require('lualine').setup {
      options = {
        section_separators = { left = '', right = '' },
        component_separators = { left = '|', right = '|' }
      },
      tabline = {
        lualine_a = {'tabs'},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {'buffers'},
        lualine_y = {},
        lualine_z = {}
      },
      winbar = {}
    }
    end
  },
}
