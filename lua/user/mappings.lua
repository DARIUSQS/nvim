vim.keymap.set("n", "<C-t>", ":NvimTreeFindFileToggle<CR>")
vim.keymap.set("n", "<C-y>", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<C-m>", function() require("harpoon.mark").add_file() end)
vim.keymap.set("n", "<C-t>", function() require("harpoon.ui").toggle_quick_menu() end)
vim.keymap.set("n", "<C-k>", function() require("harpoon.ui").nav_next() end)
vim.keymap.set("n", "<C-j>", function() require("harpoon.ui").nav_prev() end)
vim.keymap.set("n", "<C-l>", function() require("harpoon.ui").nav_file(1) end)
vim.keymap.set("n", "<C-p>", "<C-^>")

