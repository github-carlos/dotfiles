return {
  "kdheepak/lazygit.nvim",
  enabled = true,
  config = function()
    require("lazy").setup({
      {
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        dependencies = {
          "nvim-lua/plenary.nvim",
        },
      },
    })

    vim.keymap.set("n", "<leader>GG", ":LazyGit<CR>", { desc = "LazyGit" })
  end,
}

