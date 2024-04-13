return {
  "nvim-lua/plenary.nvim",
  "tpope/vim-fugitive",
  {
    "folke/zen-mode.nvim",
    opts = {
      window = {
        width = 90,
      },
      plugins = {
        options = {
          laststatus = 3,
        }
      }
    }
  },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    opts = {}
  },
  {
    "rrethy/vim-hexokinase",
    build = "make hexokinase"
  },
  "windwp/nvim-ts-autotag",
}
