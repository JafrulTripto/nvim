vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
keymap.set("i", "jk","<ESC>") -- ESC key remap
-- MOVE
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window


keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

keymap.set("x", "<leader>p", [["_dP]]) -- peste without loosign

-- Copy to system clipboard

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
