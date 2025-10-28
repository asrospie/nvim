require("oil").setup()
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
require("lspconfig").gleam.setup({})

vim.o.listchars = "eol:\\u261a,tab:<->,trail:-,lead:\\u2022"

-- cmp setup

local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }

-- changes selecting autocomplete to using tabs
cmp.setup({
    mapping = {
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
        ["<Tab>"] = cmp.mapping.select_next_item(cmp_select),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(cmp_select),
    },
})

-- harpoon setup

local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>hm", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
vim.keymap.set("n", "<leader>hp", function() harpoon:list():prev() end)
vim.keymap.set("n", "<leader>hn", function() harpoon:list():next() end)
vim.keymap.set("n", "<leader>hq", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>hw", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>he", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>hr", function() harpoon:list():select(4) end)
