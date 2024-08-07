require("tortea.core")
require("tortea.lazy")

vim.opt.hlsearch = false

vim.g.mapleader = "["

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

vim.keymap.set("n", "L", "w", {})
vim.keymap.set("n", "H", "b", {})

local lspconfig = require("lspconfig")
lspconfig.gopls.setup({})

vim.opt.swapfile = false

--c++
--vnoremap ? :s/^\(\s\+\)\?\/\//<cr>
--vnoremap / :s/^/\/\/<cr>
