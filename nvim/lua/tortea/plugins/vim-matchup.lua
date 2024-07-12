return {
	"andymass/vim-matchup",
	event = "CursorMoved",
	config = function()
		vim.g.matchup_matchparen_offsecreen = { method = "popup" }
	end,
}
