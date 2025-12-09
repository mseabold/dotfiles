return {
  'nvim-telescope/telescope.nvim', tag = 'v0.2.0',
  dependencies = { 'nvim-lua/plenary.nvim'},
  config = function(_, opts)
    local telescope = require('telescope')
    local builtin = require('telescope.builtin')

    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find workspace files' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find workspace files' })
    vim.keymap.set('n', '<leader>fs', builtin.grep_string, { desc = 'Grep string in workspace' })
    vim.keymap.set('n', '<leader>fl', builtin.live_grep, { desc = 'Live grep' })

    vim.keymap.set('n', '<leader>lr', builtin.lsp_references, { desc = 'Find LSP references' })
    vim.keymap.set('n', '<leader>ld', builtin.lsp_definitions, { desc = 'Find LSP definitions' })
    vim.keymap.set('n', '<leader>lx', builtin.diagnostics, { desc = 'LSP diagnostics' })
    vim.keymap.set('n', '<leader>li', builtin.lsp_implementations, { desc = 'LSP implementations' })
  end
}
