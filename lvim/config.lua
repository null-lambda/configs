-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny


lvim.plugins = require("plugins")
require("keymap")
require("internals")

lvim.colorscheme = "gruvbox"
lvim.format_on_save = true
lvim.format_on_save_pattern = {
    "*.lua",
    "*.py",
    "*.rs",
    "*.cpp",
    "*.c",
    "*.hpp",
    "*.h",
}

-- Disable automatic root detection
lvim.builtin.project.manual_mode = true

-- Tab to auto-complete
lvim.builtin.cmp.preselect = true
