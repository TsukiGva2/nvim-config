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
			close_if_last_window = false,
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
					hide_dotfiles = false,
					hide_gitignored = false,
				},
			},

			window = {
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
