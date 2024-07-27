return {
	"lewis6991/gitsigns.nvim",
	enabled = true,
	config = function()
		require("gitsigns").setup()
		vim.keymap.set("n", "<leader>Gp", ":Gitsigns preview_hunk<CR>", { desc = "Gitsigns Preview Hunk" })
		vim.keymap.set("n", "<leader>Gb", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Git Blame current line" })
    vim.keymap.set('n', '<leader>Gsa', require('telescope.builtin').git_status, { desc = 'Search [G]it [S]tatus' })
    vim.keymap.set('n', '<leader>Gsa', require('telescope.builtin').git_status, { desc = 'Search [G]it [S]tatus' })


    local gs = package.loaded.gitsigns
    vim.keymap.set({ 'n', 'v' }, ']c', function()
      if vim.wo.diff then
        return ']c'
      end
      vim.schedule(function()
        gs.next_hunk()
      end)
      return '<Ignore>'
    end, { expr = true, desc = 'Jump to next hunk' })

    vim.keymap.set({ 'n', 'v' }, '[c', function()
      if vim.wo.diff then
        return '[c'
      end
      vim.schedule(function()
        gs.prev_hunk()
      end)
      return '<Ignore>'
    end, { expr = true, desc = 'Jump to previous hunk' })
	end,
}
