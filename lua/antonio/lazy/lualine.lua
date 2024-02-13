return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = false,
        theme = "palenight"
      },
      sections = {
        lualine_c = {{"filename", path = 1}}
      }
    })
  end
}
