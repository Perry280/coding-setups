vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-S>", "<cmd>wa<CR>")
vim.keymap.set("n", "<C-Q>", "<cmd>xa<CR>")
vim.keymap.set("n", "<leader>Q", "<cmd>q<CR>")
vim.keymap.set("n", "<C-N>", "<cmd>Ex<CR>")
vim.keymap.set("n", "<leader>N", "<cmd>e .<CR>")
