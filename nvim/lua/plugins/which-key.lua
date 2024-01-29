return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  config = function()
    local wk = require("which-key")
    wk.register({
    c = {
      name = " Commands", -- optional group name
    },
    s = {
      name = " Fuzzy Finder", -- optional group name
    },
    g = {
      name = " LSP options", -- optional group name
    },
    f = {
      name = " Lint and Formatting", -- optional group name
    },
    x = {
      name = " Trouble", -- optional group name
    },
}, { prefix = "<leader>" })
  end
}
