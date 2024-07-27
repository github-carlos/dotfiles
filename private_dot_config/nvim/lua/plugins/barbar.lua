local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map("n", "<leader>,", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<leader>.", "<Cmd>BufferNext<CR>", opts)

-- Re-order to previous/next
map("n", "<leader><", "<Cmd>BufferMovePrevious<CR>", opts)
map("n", "<leader>>", "<Cmd>BufferMoveNext<CR>", opts)

-- Goto buffer in position...
map("n", "<leader>1", "<Cmd>BufferGoto 1<CR>", opts)
map("n", "<leader>2", "<Cmd>BufferGoto 2<CR>", opts)
map("n", "<leader>3", "<Cmd>BufferGoto 3<CR>", opts)
map("n", "<leader>4", "<Cmd>BufferGoto 4<CR>", opts)
map("n", "<leader>5", "<Cmd>BufferGoto 5<CR>", opts)
map("n", "<leader>0", "<Cmd>BufferLast<CR>", opts)

-- Pin/unpin buffer
map("n", "<leader>bP", "<Cmd>BufferPin<CR>", opts)

-- Close buffer
map("n", "<leader>bx", "<Cmd>BufferClose!<CR>", opts)
map("n", "<leader>bXa", "<Cmd>BufferCloseAllButCurrent<CR>", opts)
map("n", "<leader>bXp", "<Cmd>BufferCloseAllButPinned<CR>", opts)
map("n", "<leader>bX>", "<Cmd>BufferCloseBuffersRight<CR>", opts)
map("n", "<leader>bX<", "<Cmd>BufferCloseBuffersLeft<CR>", opts)

-- Magic buffer-picking mode
map("n", "<leader>bp", "<Cmd>BufferPick<CR>", opts)
-- Sort automatically by...
map("n", "<leader>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
map("n", "<leader>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
map("n", "<leader>bl", "<Cmd>BufferOrderByLanguage<CR>", opts)
map("n", "<leader>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)

return {
  "romgrk/barbar.nvim",
  enabled = true,
  dependencies = {
    "lewis6991/gitsigns.nvim",   -- OPTIONAL: for git status
    "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  opts = {
    -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
    -- animation = true,
    -- insert_at_start = true,
    -- …etc.
    icons = {
      buffer_index = true,
      gitsigns = {
        added = { enabled = true, icon = "+" },
        changed = { enabled = true, icon = "~" },
        deleted = { enabled = true, icon = "-" },
      },
    },
  },
  version = "^1.0.0", -- optional: only update when a new 1.x version is released
}
