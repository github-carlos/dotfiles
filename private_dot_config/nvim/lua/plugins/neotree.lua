return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      position = "float", -- enables floating window mode
      popup = { -- configure the floating window popup options
        size = {
          height = "80%", -- set the height of the floating window
          width = "50%", -- set the width of the floating window
        },
        border = "rounded", -- you can change to 'single', 'double', 'solid', etc.
        winblend = 10, -- transparency level (0-100)
      },
    },
    filesystem = {
      follow_current_file = {
        enabled = true,
      }, -- Automatically open Neotree to the current file
      hijack_netrw_behavior = "open_default",
    },
    -- other options can be customized here
  },
}
