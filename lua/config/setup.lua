require("oil").setup()
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
require("lspconfig").gleam.setup({})

vim.o.listchars = "eol:\\u261a,tab:<->,trail:-,lead:\\u2022"
require("americano").colorscheme()

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

-- local ui = require('harpoon.ui')
-- local mark = require('harpoon.mark')
-- -- local cmd_ui = require('harpoon.cmd-ui')
--
-- vim.keymap.set("n", "<leader>ha", function() mark.add_file() end)
-- vim.keymap.set("n", "<leader>hm", function() ui.toggle_quick_menu() end)
-- vim.keymap.set("n", "<leader>hp", function() ui.nav_prev() end)
-- vim.keymap.set("n", "<leader>hn", function() ui.nav_next() end)
-- vim.keymap.set("n", "<leader>hq", function() ui.nav_file(1) end)
-- vim.keymap.set("n", "<leader>hw", function() ui.nav_file(2) end)
-- vim.keymap.set("n", "<leader>he", function() ui.nav_file(3) end)
-- vim.keymap.set("n", "<leader>hr", function() ui.nav_file(4) end)
