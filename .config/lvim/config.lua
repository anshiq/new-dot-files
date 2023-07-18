-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "eslint", filetypes = { "typescript", "typescriptreact" } }
}
lvim.colorscheme = "dracula"
lvim.keys.normal_mode["n"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["N"] = ":BufferLineCyclePrev<CR>"
lvim.plugins = {
    "lunarvim/darkplus.nvim",
    'Mofiqul/dracula.nvim',
    -- {
    --       "tzachar/cmp-tabnine",
    --       run = "./install.sh",
    --       requires = "hrsh7th/nvim-cmp",
    --       config = function()
    --         local tabnine = require "cmp_tabnine.config"
    --         tabnine:setup {
    --           max_lines = 1000,
    --           max_num_results = 10,
    --           sort = true,
    --         }
    --       end,
    --       opt = true,
    --       event = "InsertEnter",
    --     },

}
