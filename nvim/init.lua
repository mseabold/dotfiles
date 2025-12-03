require("config.lazy")
--require("config.lsps")
vim.lsp.enable('clangd')
vim.lsp.enable('basedpyright')
vim.lsp.enable('lua_ls')

vim.cmd.colorscheme 'catppuccin-mocha'

require('lualine').setup {
    options = {
        theme = 'catppuccin'
    }
}
