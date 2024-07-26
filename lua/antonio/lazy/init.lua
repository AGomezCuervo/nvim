return {
  "nvim-lua/plenary.nvim",
  "tpope/vim-fugitive",
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
