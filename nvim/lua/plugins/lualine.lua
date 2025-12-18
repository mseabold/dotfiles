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
        lualine_x = {'encoding', 'fileformat', 'filetype', 'lsp_status'},
        lualine_y = {
          'progress',
          {
            function ()
              local space = vim.fn.search([[\s\+$]], 'nwc')
              return space ~= 0 and "TW:"..space or ""
            end,
            color = 'WarningMsg'
          }
        }
      }
    }
  end
}
