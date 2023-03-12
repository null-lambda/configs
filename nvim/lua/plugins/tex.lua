  -- Tex
return { 
  { 'lervag/vimtex',
    lazy = false,
    config = function() 

      if vim.fn.executable('SumatraPDF') == 0 then
        vim.g.vimtex_view_method = 'zathura'
      end

      vim.g.maplocalleader = ','
    end
  }
}
