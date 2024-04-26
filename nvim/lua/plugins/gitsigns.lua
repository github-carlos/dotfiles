return {
	"lewis6991/gitsigns.nvim",
	enabled = true,
	config = function()
		require("gitsigns").setup()
		vim.keymap.set("n", "<leader>Gp", ":Gitsigns preview_hunk<CR>", { desc = "Gitsigns Preview Hunk" })
		vim.keymap.set("n", "<leader>Gb", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Git Blame current line" })
    vim.keymap.set('n', '<leader>Gs', require('telescope.builtin').git_status, { desc = 'Search [G]it [S]tatus' })
	end,
}
