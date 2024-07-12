return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				cpp = { "clang-format" },
				c = { "clang-format" },
			},

			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 1200,
			},
		})

		vim.keymap.set({ "n" }, "<leader>f", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 1200,
			})
		end, { desc = "Format file" })
	end,
}
