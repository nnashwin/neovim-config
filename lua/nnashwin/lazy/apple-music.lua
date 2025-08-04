return {
	"p5quared/apple-music.nvim",
	-- Optional dependencies (install one of the supported pickers, e.g., 'nvim-telescope/telescope.nvim' for Telescope or 'ibhagwan/fzf-lua' for fzf-based picker)
	-- dependencies = {
	--   'nvim-telescope/telescope.nvim'
	--   'ibhagwan/fzf-lua',
	-- },
	config = true,
	keys = {
		{
			"<leader>amp",
			function()
				require("apple-music").toggle_play()
			end,
			desc = "Toggle [P]layback",
		},
		{
			"<leader>ams",
			function()
				require("apple-music").toggle_shuffle()
			end,
			desc = "Toggle [S]huffle",
		},
		{
			"<leader>amn",
			function()
				require("apple-music").next_track()
			end,
			desc = "[N]ext Track",
		},
		{
			"<leader>amp",
			function()
				require("apple-music").previous_track()
			end,
			desc = "[N]ext Track",
		},
		{
			"<leader>fp",
			function()
				require("apple-music").select_playlist()
			end,
			desc = "[F]ind [P]laylists",
		},
		{
			"<leader>fa",
			function()
				require("apple-music").select_album()
			end,
			desc = "[F]ind [A]lbum",
		},
		{
			"<leader>fs",
			function()
				require("apple-music").select_track()
			end,
			desc = "[F]ind [S]ong",
		},
		{
			"<leader>amx",
			function()
				require("apple-music").cleanup_all()
			end,
			desc = "Cleanup Temp Playlists",
		},
	},
}
