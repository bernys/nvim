return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			javascript = { "biome" },
			typescript = { "biome" },
			javascriptreact = { "biome" },
			typescriptreact = { "biome" },
			json = { "biome" },
			jsonc = { "biome" },
			python = { "black", "isort" },
			sh = { "shfmt" },
			markdown = { "prettierd", "prettier" },
		},
	},

	config = function(_, opts)
		local conform = require("conform")
		conform.setup(opts)

		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function(args)
				conform.format({
					bufnr = args.buf,
					timeout_ms = 500,
					lsp_fallback = true,
				})
			end,
		})
	end,

	keys = {
		{
			"<leader>fm",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			desc = "[F]ormat [M]anual",
		},
	},
}
