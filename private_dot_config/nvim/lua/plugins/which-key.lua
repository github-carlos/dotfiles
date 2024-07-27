return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	enabled = true,
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	config = function()
		local wk = require("which-key")
		wk.register({
      ["0"] = "which_key_ignore",
      ["1"] = "which_key_ignore",
      ["2"] = "which_key_ignore",
      ["3"] = "which_key_ignore",
      ["4"] = "which_key_ignore",
      ["5"] = "which_key_ignore",
      ["6"] = "which_key_ignore",
      [","] = "which_key_ignore",
      ["."] = "which_key_ignore",
      ["<"] = "which_key_ignore",
      [">"] = "which_key_ignore",
      ["<space>"] = "which_key_ignore",
			b = {
				name = " Buffer Options", -- optional group name
			},
			c = {
				name = " Commands", -- optional group name
			},
			d = {
				name = " Debugger", -- optional group name
			},
			s = {
				name = " Fuzzy Finder", -- optional group name
			},
			g = {
				name = " Lsp options", -- optional group name
			},
			G = {
				name = " Git options", -- optional group name
			},
			f = {
				name = " Lint and Formatting", -- optional group name
			},
			t = {
				name = " Tests", -- optional group name
			},
			u = {
				name = " Undo Tree", -- optional group name
			},
			x = {
				name = " Trouble", -- optional group name
			},
		}, { prefix = "<leader>" })
	end,
}
