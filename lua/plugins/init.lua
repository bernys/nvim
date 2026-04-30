return {
	{
		-- icons
		"nvim-tree/nvim-web-devicons",
		config = function()
			require("nvim-web-devicons").setup({})
		end,
		priority = 1000,
	},
	{
		-- multi-cursor
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
		-- comment
		'numToStr/Comment.nvim',
	},
	{
		-- comment TSX JSX
		'JoosepAlviste/nvim-ts-context-commentstring',
		lazy = false,
	},
	{
		-- surround
		"tpope/vim-surround"
	}
}
