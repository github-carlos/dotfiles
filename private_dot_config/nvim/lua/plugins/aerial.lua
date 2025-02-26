-- You probably also want to set a keymap to toggle aerial
vim.keymap.set("n", "<leader>A", "<cmd>AerialToggle! left<CR>")
vim.keymap.set("n", "<leader>a", "<cmd>AerialNavToggle<CR>")

return {
  "stevearc/aerial.nvim",
  opts = {},
  -- Optional dependencies
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
}
