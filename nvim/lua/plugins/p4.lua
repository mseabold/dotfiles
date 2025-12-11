return {
  'rmccord7/p4.nvim',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-telescope/telescope.nvim',
    {
      "ColinKennedy/mega.cmdparse",
      dependencies = { "ColinKennedy/mega.logging" },
      version = "v1.*",
    },
  },
  opts = {
  },
  config = function(_,_)
  end
}
