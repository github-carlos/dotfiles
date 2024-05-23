return {
	"kevinhwang91/nvim-ufo", -- Substitua com o caminho correto do plugin 'ufo', se necessário
  dependencies = "kevinhwang91/promise-async",
	enabled = true,
	config = function()
		-- Aqui dentro, você coloca as configurações do plugin 'ufo'

		-- Configurações de fold
		vim.o.foldcolumn = "1" -- '0' é também uma boa opção
		vim.o.foldlevel = 99 -- Usando o provedor ufo, é necessário um valor alto
		vim.o.foldlevelstart = 99
		vim.o.foldenable = true

		-- Mapeamentos de teclas
		vim.keymap.set("n", "zR", require("ufo").openAllFolds, { desc = "Open all folds" })
		vim.keymap.set("n", "zM", require("ufo").closeAllFolds, { desc = "Close all folds" })
		vim.keymap.set("n", "zK", function()
			local winid = require("ufo").peekFoldedLinesUnderCursor()
			if not winid then
				vim.lsp.buf.hover()
			end
		end, { desc = "Peek Fold" })

		-- Configuração do ufo
		require("ufo").setup({
			provider_selector = function()
				return { "lsp", "indent" }
			end,
		})
	end,
}
