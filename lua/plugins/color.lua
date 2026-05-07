return {
	{ "RRethy/base16-nvim", },
	{
		"folke/tokyonight.nvim",
		lazy = false,
		opts = {},
		config = function()
		end,
	},
	{ "catppuccin/nvim",    name = "catppuccin", priority = 1000 },
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				disable_background = true,
				styles = {
					italic = false,
				},
			})
			vim.cmd("colorscheme rose-pine-moon")
		end,
	},
}
