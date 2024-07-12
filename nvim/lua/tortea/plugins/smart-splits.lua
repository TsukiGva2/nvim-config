return {
	"mrjones2014/smart-splits.nvim",
	config = function()
		local smart_splits = require("smart-splits")
		smart_splits.setup({
			ignored_buftypes = {
				"nofile",
				"prompt",
			},

			ignored_filetypes = { "Neotree" },
			at_edge = "wrap",
		})

		vim.keymap.set("n", "<leader>h", smart_splits.resize_left)
		vim.keymap.set("n", "<leader>j", smart_splits.resize_down)
		vim.keymap.set("n", "<leader>k", smart_splits.resize_up)
		vim.keymap.set("n", "<leader>l", smart_splits.resize_right)

		vim.keymap.set("n", "<C-h>", smart_splits.move_cursor_left)
		vim.keymap.set("n", "<C-j>", smart_splits.move_cursor_down)
		vim.keymap.set("n", "<C-k>", smart_splits.move_cursor_up)
		vim.keymap.set("n", "<C-l>", smart_splits.move_cursor_right)
	end,
}
