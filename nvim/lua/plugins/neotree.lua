return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },

  config = function ()
  -- If you want icons for diagnostic errors, you'll need to define them somewhere:
    vim.fn.sign_define("DiagnosticSignError",
      {text = " ", texthl = "DiagnosticSignError"})
    vim.fn.sign_define("DiagnosticSignWarn",
      {text = " ", texthl = "DiagnosticSignWarn"})
    vim.fn.sign_define("DiagnosticSignInfo",
      {text = " ", texthl = "DiagnosticSignInfo"})
    vim.fn.sign_define("DiagnosticSignHint",
      {text = "󰌵", texthl = "DiagnosticSignHint"})
  
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
        }

      })
  end
}
