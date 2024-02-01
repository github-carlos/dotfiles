return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "Search Files" })
      vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "Search with Grep" })
      vim.keymap.set("n", "<leader>sG", builtin.live_grep, { desc = "Search with Grep under cursor" })
      vim.keymap.set("n", "<leader>sb", builtin.buffers, { desc = "Search Opened Buffers" })
      vim.keymap.set("n", "<leader>sB", builtin.current_buffer_fuzzy_find, { desc = "Search in Buffer" })

      require("telescope").load_extension("ui-select")
    end,
  },
}
