return {
	"ThePrimeagen/harpoon",
	enabled = true,
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup()

		vim.keymap.set("n", "<leader>e", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)

		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end)

		vim.keymap.set("n", "<leader>1", function()
			harpoon:list():select(1)
		end, { desc = "File 1" })
		vim.keymap.set("n", "<leader>2", function()
			harpoon:list():select(2)
		end, { desc = "File 2" })
		vim.keymap.set("n", "<leader>3", function()
			harpoon:list():select(3)
		end, { desc = "File 3" })
		vim.keymap.set("n", "<leader>4", function()
			harpoon:list():select(4)
		end, { desc = "File 4" })

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<leader>o", function()
			harpoon:list():prev()
		end)
		vim.keymap.set("n", "<leader>i", function()
			harpoon:list():next()
		end)
	end,
}
