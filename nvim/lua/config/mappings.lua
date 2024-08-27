-- Neotree
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>")
vim.keymap.set("n", "<leader>n", ":Neotree focus<CR>")

-- Window Navigaion
vim.keymap.set("n", "<leader>h", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>j", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>k", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>l", "<C-w>l", { noremap = true, silent = true })

-- Resize Window
vim.keymap.set("n", "<C-Left>", "<C-w>>")
vim.keymap.set("n", "<C-Right>", "<C-w><")
vim.keymap.set("n", "<C-Up>", "<C-w>+")
vim.keymap.set("n", "<C-Down>", "<C-w>-")
