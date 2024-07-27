vim.keymap.set("n", "<leader>xx", function()
	require("trouble").toggle 'diagnostics'
end, { desc = "Toggle Panel" })
vim.keymap.set("n", "<leader>xw", function()
	require("trouble").toggle("workspace_diagnostics")
end, { desc = "Workspace Diagnostics" })
vim.keymap.set("n", "<leader>xd", function()
	require("trouble").toggle("document_diagnostics")
end, { desc = "Document Diagnostics" })

return {
	"folke/trouble.nvim",
	enabled = true,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
}
