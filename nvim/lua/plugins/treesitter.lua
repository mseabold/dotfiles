vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'c', 'python', 't32', 'toml', 'yaml', 'cmake', 'tmux', 'rust' },
  callback = function() vim.treesitter.start() end,
})

return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function(_,_)
    require('nvim-treesitter').install { "rust", "python", "t32", "cmake", "toml", "yaml", "tmux" }
  end
}
