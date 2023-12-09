-- Custom remaps
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "gl", "$")
vim.keymap.set("v", "gl", "$")
vim.keymap.set("n", "gh", "^")
vim.keymap.set("v", "gh", "^")
vim.keymap.set("n", "ge", "G")
vim.keymap.set("v", "ge", "G")

-- remap to jump quicker
vim.keymap.set("n", "(", "15k")
vim.keymap.set("n", ")", "15j")

-- exit visual mode with comma
vim.keymap.set("v", ",", "<Esc>")

-- Half page jumping
vim.keymap.set("n", "gj", "<C-d>zz")
vim.keymap.set("n", "gk", "<C-u>zz")

-- Yank to system keyboard
vim.keymap.set("n", "<leader>y", "\"*y")
vim.keymap.set("v", "<leader>y", "\"*y")
vim.keymap.set("n", "<leader>Y", "\"*y")

-- Remaps from the Primeagen
vim.keymap.set("n", "Q", "<nop>")

-- Move visual highlighted blocks around
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- testing

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- window
vim.keymap.set("n", "<leader>wv", "<C-W>v")
vim.keymap.set("n", "<leader>ww", "<C-W>w")
vim.keymap.set("n", "<leader>ws", "<C-W>s")
vim.keymap.set("n", "<leader>wq", "<C-W>q")
vim.keymap.set("n", "<leader>wk", "<C-W>k")
vim.keymap.set("n", "<leader>wj", "<C-W>j")
vim.keymap.set("n", "<leader>wh", "<C-W>h")
vim.keymap.set("n", "<leader>wl", "<C-W>l")
vim.keymap.set("n", "<leader>w=", "<C-W>+")
vim.keymap.set("n", "<leader>w-", "<C-W>-")
vim.keymap.set("n", "<leader>wg", "<C-W>=")

-- macro stuff
vim.keymap.set("n", "<leader>m", "@q")
-- vim.keymap.set("n", "<leader>nm", "qq")
-- vim.keymap.set("n", "<leader>em", "q")
