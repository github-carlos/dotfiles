return {
  "kylechui/nvim-surround",
  version = "*", -- Use the latest stable version
  event = "VeryLazy", -- Loads on demand
  config = function()
    require("nvim-surround").setup({})
  end,
}
