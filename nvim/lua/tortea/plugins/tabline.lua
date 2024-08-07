return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
	},
	init = function()
		require("barbar.api").set_offset(51, "File Explorer")
		vim.g.barbar_auto_setup = false
	end,
	opts = {
		icons = {
			separator = { left = "/", right = "" },
			separator_at_end = false,
		},
		no_name_title = "Scratch",
	},
	version = "^1.0.0", -- optional: only update when a new 1.x version is released
}
