return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		require("mason").setup()

		require("mason-lspconfig").setup({
			ensure_installed = {
				"cssls",
				"eslint",
				"html",
				"jsonls",
				"pyright",
				"clangd",
				"rust_analyzer",
				"gopls",
			},
			automatic_enable = true,
		})

		require("mason-tool-installer").setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"isort",
				"autopep8",
				"pylint",
				"eslint_d",
			},
			auto_update = true,
			run_on_start = true,
		})
	end,
}
