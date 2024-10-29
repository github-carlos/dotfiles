-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Unmap the existing <leader>e if needed
vim.keymap.set("n", "<leader>e", "", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>E", "", { noremap = true, silent = true })

-- Map <leader>p to toggle NeoTree
vim.keymap.set("n", "<leader>p", "<cmd>Neotree toggle<CR>", { noremap = true, silent = true, desc = "Toggle NeoTree" })

-- refactoring plugin
-- https://github.com/ThePrimeagen/refactoring.nvim
vim.keymap.set({ "n", "x" }, "<leader>rr", function()
  require("refactoring").select_refactor()
end)

-- centralizes next match
local opts = { noremap = true, silent = true }

-- Map for centering the screen when going to the next matched word
vim.api.nvim_set_keymap(
  "n", -- Normal mode
  "n", -- Key for next match
  "nzz", -- Execute next match and center
  opts
)

-- Optionally, you can also create a similar mapping for the previous match
vim.api.nvim_set_keymap(
  "n", -- Normal mode
  "N", -- Key for previous match
  "Nzz", -- Execute previous match and center
  opts
)

vim.api.nvim_set_keymap(
  "n", -- Normal mode
  "<leader>cS", -- Change this to your preferred keybinding
  "<cmd>lua require('telescope.builtin').lsp_references({ prompt_title = 'References', show_line = false  })<CR>",
  { noremap = true, silent = true, desc = "LSP References" }
)

local telescope = require("telescope.builtin")

local function list_functions()
  -- Get all symbols in the document
  telescope.lsp_document_symbols({
    initial_mode = "normal",
    attach_mappings = function(_, map)
      -- Custom function to filter out only functions
      map("i", "<CR>", function(prompt_bufnr)
        local selection = telescope.actions.state.get_selected_entry()
        if selection and selection.kind == "Function" then
          telescope.actions.close(prompt_bufnr)
          -- Jump to the selected function
          vim.lsp.util.jump_to_location(selection)
        end
      end)
      return true
    end,
  })
end

-- Create a key mapping for the custom function
vim.api.nvim_set_keymap("n", "<leader>c(", ":lua list_functions()<CR>", { noremap = true, silent = true })
