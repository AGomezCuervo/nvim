vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex )
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "x", '"_x')
vim.keymap.set('i', '<C-BS>', '<C-W>')

-- split window
vim.keymap.set("n", "<leader>sv", "<C-w>v")
vim.keymap.set("n", "<leader>sh", "<C-w>s")
vim.keymap.set("n", "<leader>se", "<C-w>=")
vim.keymap.set("n", "<leader>sx", "<:close<CR>")
vim.keymap.set("n", "<leader>nh", ":nohl<CR>")
vim.keymap.set("n", "<leader>s;", "<C-w>w")

vim.keymap.set({"n", "x"}, "<leader>y", '"+y')

--  Tabs
--vim.keymap.set("n", "<leader>to", ":tabnew<CR>")
--vim.keymap.set("n", "<leader>tx", ":tabclose<CR>")
--vim.keymap.set("n", "<leader>tn", ":tabn<CR>")
--vim.keymap.set("n", "<leader>tp", ":tabp<CR>")
