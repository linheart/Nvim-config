return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "folke/neodev.nvim", opts = {} },
	},
	config = function()
		local cfg = vim.lsp.config
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		local on_attach = function(client, bufnr)
			if client.server_capabilities.documentFormattingProvider then
				vim.api.nvim_create_autocmd("BufWritePre", {
					group = vim.api.nvim_create_augroup("LspFormat", { clear = true }),
					buffer = bufnr,
					callback = function()
						vim.lsp.buf.format()
					end,
				})
			end

			vim.api.nvim_create_autocmd("CursorHold", {
				buffer = bufnr,
				callback = function()
					vim.diagnostic.open_float(nil, { focusable = false })
				end,
			})
		end

		local common_opts = {
			on_attach = on_attach,
			capabilities = capabilities,
		}

		local servers = {
			"clangd",
			"cssls",
			"eslint",
			"gopls",
			"html",
			"jsonls",
			"pyright",
			"rust_analyzer",
		}

		for _, name in ipairs(servers) do
			cfg(name, common_opts)
		end
	end,
}
