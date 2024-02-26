vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set formatoptions-=cro")
vim.g.mapleader = " "
vim.wo.relativenumber = true
vim.wo.number = true
vim.keymap.set("n", "<C-d>", "<C-d>zz", {})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {})
