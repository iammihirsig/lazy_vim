return {
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = false, -- Ensure it loads at startup
		priority = 1000,
		opts = {
			transparent = false,
		},
		config = function()
			vim.cmd([[colorscheme solarized-osaka]]) -- Set the colorscheme
		end,
	},
}
