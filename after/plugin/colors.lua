require('rose-pine').setup({
    disable_background = true
})

function ColorMyPencils(color)
  color = color or "rose-pine"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

  -- git signs column
  vim.cmd('hi GitSignsAdd guibg=NONE ctermbg=NONE')
  vim.cmd('hi GitSignsChange guibg=NONE ctermbg=NONE')
  vim.cmd('hi GitSignsDelete guibg=NONE ctermbg=NONE')

end

ColorMyPencils()
