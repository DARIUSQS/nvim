require("toggleterm").setup({
  size = 30,
  open_mapping = [[<c-\>]],
  hide_numbers = true, -- hide the number column in toggleterm buffers
  shade_filetypes = {},
  autochdir = false, -- when neovim changes it current directory the terminal will change it's own when next it's opened
  shade_terminals = true, -- NOTE: this option takes priority over highlights specified so if you specify Normal highlights you should set this to false
  shading_factor = 2, -- the percentage by which to lighten terminal background, default: -30 (gets multiplied by -3 if background is light)
  start_in_insert = true,
  insert_mappings = true, -- whether or not the open mapping applies in insert mode
  terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
  persist_size = true,
  persist_mode = true, -- if set to true (default) the previous terminal mode will be remembered
  direction = "float",
  close_on_exit = true, -- close the terminal window when the process exits
  shell = vim.o.shell,
  auto_scroll = true, -- automatically scroll to the bottom on terminal output
  float_opts = {
    border = 'curved',
    winblend = 0,
    highlights = {
        border = "Normal",
        background = "Normal",
    },
  },
})
