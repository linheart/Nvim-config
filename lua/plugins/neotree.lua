return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},

	config = function()
		vim.diagnostic.config({
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = " ",
					[vim.diagnostic.severity.WARN] = " ",
					[vim.diagnostic.severity.INFO] = " ",
					[vim.diagnostic.severity.HINT] = "󰌵",
				},
			},
		})

		require("neo-tree").setup({
			close_if_last_window = true,
			popup_border_style = "rounded",
			enable_git_status = true,
			enable_diagnostics = true,
			open_files_do_not_replace_types = { "terminal", "trouble", "qf" },

			commands = {},

			window = {
				position = "left",
				width = 40,
				mapping_options = {
					noremap = true,
					nowait = true,
				},
			},

			filesystem = {
				follow_current_file = true, -- Следовать за текущим файлом
				use_libuv_file_watcher = true, -- Асинхронное обновление дерева
			},

			buffers = {
				show_unloaded = true, -- Показать не загруженные буферы
			},

			git_status = {
				window = {
					position = "float", -- Плавающее окно для статуса Git
				},
			},

			default_component_configs = {
				indent = { with_expanders = true },
				icon = {
					folder_closed = "",
					folder_open = "",
					folder_empty = "󰜌",
				},
			},
		})
	end,
}
