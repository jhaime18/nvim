-- File explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- Open netrw file explorer

-- Moving lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Move selected lines down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- Move selected lines up

-- Center screen when scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Scroll half-page down and center
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Scroll half-page up and center

-- Pasting without overwriting clipboard
vim.keymap.set("x", "<leader>p", [["_dP]]) -- Paste over selection without yanking

-- System clipboard yanking
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]]) -- Yank to system clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]]) -- Yank entire line to system clipboard

-- Deleting without yanking
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]]) -- Delete without affecting clipboard
