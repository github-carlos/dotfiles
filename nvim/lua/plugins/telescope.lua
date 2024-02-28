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
      vim.keymap.set("n", "<leader>sG", builtin.grep_string, { desc = "Search with Grep under cursor" })
      vim.keymap.set("n", "<leader>sr", builtin.lsp_references, { desc = "Search References" })
      vim.keymap.set("n", "<leader>sb", builtin.buffers, { desc = "Search Opened Buffers" })
      vim.keymap.set("n", "<leader>sB", builtin.current_buffer_fuzzy_find, { desc = "Search in Buffer" })
      vim.keymap.set("n", "<leader>sm", builtin.marks, { desc = "Search in Marks" })
      vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "Current Buffers" })
      vim.keymap.set("n", "<leader>sl", builtin.resume, { desc = "Search Last" })

      require("telescope").load_extension("ui-select")
    end,
  },
}
