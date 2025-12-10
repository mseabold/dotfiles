-- Setup some basic keymaps

-- Use jk/kj to exec insert
vim.keymap.set('i', 'jk', '<esc>')
vim.keymap.set('i', 'kj', '<esc>')

-- C-h to remove search highlights
vim.keymap.set({'n', 'i'}, '<C-h>', '<Cmd>nohl<CR>', { silent = true })

-- Case insensitve searches for meeeee
vim.o.ignorecase = true
vim.o.smartcase = true

-- No mouse
vim.o.mouse = ""

require("config.lazy")
require("config.lsps")

vim.cmd.colorscheme 'catppuccin-mocha'
