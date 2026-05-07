return {
	{
		"nvim-tree/nvim-web-devicons",
		config = function()
			require("nvim-web-devicons").setup({})
		end,
		priority = 1000,
	},
	{
		'mg979/vim-visual-multi',
		branch = 'master',
		init = function()
			vim.g.VM_maps = {
				["Add Cursor Up"] = "<C-S-K>",
				["Add Cursor Down"] = "<C-S-J>",
			}
		end,
	},
	{
		'numToStr/Comment.nvim',
	},
	{
		"j-hui/fidget.nvim",
		opts = {
			notification = {
				override_vim_notify = true,
			}
		}
	},
	{
		'JoosepAlviste/nvim-ts-context-commentstring',
		lazy = false,
	},
	{
		"tpope/vim-surround"
	}
}
