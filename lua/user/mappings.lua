vim.keymap.set("n", "<C-t>", ":NvimTreeFindFileToggle<CR>")
vim.keymap.set("n", "<C-y>", ":NvimTreeFocus<CR>")

vim.keymap.set("n", "<C-p>", ":vsplit test.in \n:split test.out <CR> <C-w>h")
