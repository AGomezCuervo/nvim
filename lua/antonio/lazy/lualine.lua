local colors = {
  background  = '#1F1F28',
  foreground  = '#DCD7BA',
  blue   = '#7E9CD8',
  cyan   = '#6A9589',
  red    = 'C34043',
  violet = '#938aa9',
  grey   = '#727169',
  green = '#76946A',
  yellow = '#C0A36E'
}

local kanagawa_theme = {
  normal = {
    a = { fg = colors.background, bg = colors.blue },
    b = { fg = colors.foreground, bg = colors.background },
    c = { fg = colors.foreground, bg = colors.background },
  },

  insert = { a = { fg = colors.background, bg = colors.yellow } },
  visual = { a = { fg = colors.background, bg = colors.violet } },
  replace = { a = { fg = colors.background, bg = colors.red } },

  inactive = {
    a = { fg = colors.foreground, bg = colors.background },
    b = { fg = colors.foreground, bg = colors.background },
    c = { fg = colors.background, bg = colors.background },
  },
}

return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = false,
        theme = kanagawa_theme
      },
      sections = {
        lualine_c = {{"filename", path = 1}}
      }
    })
  end
}
