return {
	{
		"folke/tokyonight.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme tokyonight]])
		end,
	},
	{
		"folke/lazydev.nvim",
		ft = "lua", -- only load on lua files
		opts = {
			library = {
				-- See the configuration section for more details
				-- Load luvit types when the `vim.uv` word is found
				{ path = "luvit-meta/library", words = { "vim%.uv" } },
			},
		},
	},
	{ "Bilal2453/luvit-meta", lazy = true }, -- optional `vim.uv` typings
	{ "nvim-lua/plenary.nvim", name = "plenary" },
	{ "JuliaEditorSupport/julia-vim" },
	{ "preservim/nerdcommenter" },
	{ "mhartington/formatter.nvim" },
	{ "sotte/presenting.vim" },
	{ "kdheepak/JuliaFormatter.vim" },
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},
	{ "mattn/emmet-vim" },
	{ "tpope/vim-commentary" },
	{ "tpope/vim-surround" },
	{ "tpope/vim-fugitive" },
	{ "gpanders/editorconfig.nvim" },
	{ "vuciv/golf" },
}
