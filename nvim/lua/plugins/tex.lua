-- LaTex configuration
return { 
  { 'lervag/vimtex',
    lazy = false,
    config = function() 
      if vim.fn.executable('SumatraPDF') == 0 then
        vim.g.vimtex_view_method = 'zathura'
      end

      -- vim.g.vimtex_indent_enabled   = 0 -- turn off VimTeX indentation
      vim.g.vimtex_imaps_enabled    = 0 -- disable insert mode mappings (e.g. if you use UltiSnips)
      vim.g.vimtex_complete_enabled = 0 -- turn off completion
      -- vim.g.vimtex_syntax_enabled   = 0 -- disable syntax conceal

      vim.g.vimtex_compiler_latexmk = { 
       build_dir = 'build',
       continuous = 1,
       callback = 1 
      }

      vim.g.tex_conceal = 'abdmg'
      vim.g.vimtex_syntax_conceal = {
       accents = 1,
       ligatures = 1,
       cites = 1,
       fancy = 1,
       spacing = 1,
       greek = 1,
       math_bounds = 0, --
       math_delimiters = 1,
       math_fracs = 1, -- 
       math_super_sub = 1,
       math_symbols = 1,
       sections = 1, -- 
       styles = 1,
      }
      vim.opt.conceallevel = 2

      vim.g.maplocalleader = ','
    end
  }
}
