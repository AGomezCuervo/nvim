return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    require("rose-pine").setup({
      disable_background = true,
      variant = "moon",
      dark_variant = "moon",
      extend_background_behind_borders = true,
    })
    vim.cmd("colorscheme rose-pine")
    vim.cmd.colorscheme("rose-pine")
    -- vim.cmd('hi GitSignsAdd guibg=NONE ctermbg=NONE')
    -- vim.cmd('hi GitSignsChange guibg=NONE ctermbg=NONE')
    -- vim.cmd('hi GitSignsDelete guibg=NONE ctermbg=NONE')
  end
}
