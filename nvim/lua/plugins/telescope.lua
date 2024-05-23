return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
    enabled = true,
  },
  {
    "nvim-telescope/telescope.nvim",
    enabled = true,
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({
        defaults = {
          file_ignore_patterns = {"node_modules", ".git", ".cache"},
          ignore_case = false
        },
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
      vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "Current Buftfers" })
      vim.keymap.set("n", "<leader>sl", builtin.resume, { desc = "Search Last" })
      vim.keymap.set("n", "<leader>sh", function()
        builtin.find_files {hidden = true}
      end, { desc = "Search Hidden Files" })

      -- Shortcut for searching your neovim configuration files
      vim.keymap.set("n", "<leader>sn", function ()
        builtin.find_files { cwd = vim.fn.stdpath 'config' }
      end,{ desc = "Search Neovim Files" })

      require("telescope").load_extension("ui-select")
    end,
  },
}
