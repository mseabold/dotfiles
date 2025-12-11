return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function(_,_)
    require('lualine').setup {
      options = {
        theme = 'catppuccin',
      },
      sections = {
        lualine_c = { { 'filename', symbols = { readonly = '', modified = '' } } },
        lualine_x = {'encoding', 'fileformat', 'filetype', 'lsp_status'}
      }
    }
  end
}
