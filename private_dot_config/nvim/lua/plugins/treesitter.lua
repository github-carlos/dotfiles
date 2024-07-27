return {
	{
		"nvim-treesitter/nvim-treesitter",
		enabled = true,
		build = ":TSUpdate",
		dependencies = {
			{
				"nvim-treesitter/nvim-treesitter-textobjects",
				config = function()
					local move = require("nvim-treesitter.textobjects.move")
					local configs = require("nvim-treesitter.configs")
					for name, fn in pairs(move) do
						if name:find("goto") == 1 then
							move[name] = function(q, ...)
								if vim.wo.diff then
									local config = configs.get_module("textobjects.move")[name]
									for key, query in pairs(config or {}) do
										if q == query and key:find("[%]%[][cC]") then
											vim.cmd("normal! " .. key)
											return
										end
									end
								end
								return fn(q, ...)
							end
						end
					end
				end,
			},
		},
		config = function()
			local configs = require("nvim-treesitter.configs")
			configs.setup({
				ensure_installed = { "lua", "vim", "vimdoc", "javascript", "html", "go", "typescript" },
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "<C-space>",
						node_incremental = "<C-space>",
						scope_incremental = false,
						node_decremental = "<bs>",
					},
				},
				-- textobjects = {
				-- 	move = {
				-- 		enable = true,
				-- 		goto_next_start = {
				-- 			["]f"] = "@function.outer",
				-- 			["]c"] = "@class.outer",
				-- 			["]e"] = "@parameter.inner",
				-- 		},
				-- 		goto_next_end = { ["]F"] = "@function.outer", ["]C"] = "@class.outer" },
				-- 		goto_previous_start = {
				-- 			["[f"] = "@function.outer",
				-- 			["[c"] = "@class.outer",
				-- 			["[b"] = "@parameter.outer",
				-- 		},
				-- 		goto_previous_end = { ["[F"] = "@function.outer", ["[C"] = "@class.outer" },
				-- 	},
				-- 	select = {
				-- 		enable = true,
				-- 		lookahead = true,
				-- 		keymaps = {
				-- 			["ip"] = "@parameter.inner",
				-- 			["ap"] = "@parameter.outer",
				-- 		},
				-- 	},
				-- },
				sync_install = false,
				indent = { enable = true },
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		enabled = true,
		opts = { mode = "cursor", max_lines = 3 },
	},
}
