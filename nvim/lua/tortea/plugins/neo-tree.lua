return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		neo_tree = require("neo-tree")
		neo_tree.setup({
			close_if_last_window = true,
			enable_git_status = true,
			popup_border_style = "rounded",

			default_component_configs = {
				name = {
					use_git_status_colors = true,
					trailing_slash = true,
				},

				git_status = {
					symbols = {
						added = "+",
						modified = "M",
						deleted = "-",
					},
				},

				filesystem = {
					filtered_items = {
						visible = true,
					},
					group_empty_dirs = true,
				},
			},

			window = {
				position = "left",
				width = 50,
				mappings = {
					["<1-RightMouse>"] = "open_split",
					["<2-LeftMouse>"] = "open",
					["<cr>"] = "open",
					["<esc>"] = "cancel",
				},
			},
		})
	end,
}
