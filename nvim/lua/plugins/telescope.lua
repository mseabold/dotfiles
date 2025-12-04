return {
  'nvim-telescope/telescope.nvim', tag = 'v0.2.0',
  dependencies = { 'nvim-lua/plenary.nvim'},
  config = function(_, opts)
    local telescope = require('telescope')
    local builtin = require('telescope.builtin')

    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find workspace files' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find workspace files' })
  end
}
