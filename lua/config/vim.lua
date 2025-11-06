vim.keymap.set("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.relativenumber = true
vim.mouse = "nvi"

vim.keymap.set("", "<C-a>", ":wqa<CR>", { desc = "save all files in neovim and quit" })
vim.keymap.set("", "<C-q>", ":wq<CR>", { desc = "save all files in neovim and quit" })
vim.keymap.set("", "<C-h>", "<C-w>h", { desc = "Move to the left buffer" })
vim.keymap.set("", "<C-l>", "<C-w>l", { desc = "Move to the right buffer" })
vim.keymap.set("", "<C-j>", "<C-w>j", { desc = "Move to the bottom buffer" })
vim.keymap.set("", "<C-k>", "<C-w>k", { desc = "Move to the top buffer" })
