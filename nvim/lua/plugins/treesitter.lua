return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
		"JoosepAlviste/nvim-ts-context-commentstring",
		"HiPhish/nvim-ts-rainbow2",
	},
	config = function()
		vim.g.skip_ts_context_commentstring_module = true
		require("ts_context_commentstring").setup({})

		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = { enable = true },
			autotag = {
				enable = true,
				filetypes = { "html", "xml", "javascript", "typescriptreact", "javascriptreact", "svelte", "vue" },
			},
			ensure_installed = {
				"json",
				"javascript",
				"typescript",
				"tsx",
				"yaml",
				"html",
				"css",
				"markdown",
				"markdown_inline",
				"bash",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
				"c",
				"rust",
				"cpp",
				"go",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
			rainbow = {
				enable = true,
				query = "rainbow-parens",
				strategy = require("ts-rainbow.strategy.global"),
			},

			playground = {
				enable = true,
			},
		})
	end,
}
