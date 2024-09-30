return {
  -- Browser supports (requires browser specific extensions) 
  { 'glacambre/firenvim',
     -- Lazy load firenvim
     -- Explanation: https://github.com/folke/lazy.nvim/discussions/463#discussioncomment-4819297
     cond = not not vim.g.started_by_firenvim,
     build = function()
         require("lazy").load({ plugins = "firenvim", wait = true })
         vim.fn["firenvim#install"](0)
         vim.opt.guifont='DroidSansMono NFM'
     end
  },
}
