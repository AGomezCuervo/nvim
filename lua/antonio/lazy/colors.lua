-- return {
--   "rose-pine/neovim",
--   name = "rose-pine",
--   config = function()
--     require("rose-pine").setup({
--       disable_background = true,
--       variant = "main",
--       dark_variant = "main",
--       extend_background_behind_borders = true,
--     })
--     vim.cmd("colorscheme rose-pine")
--     vim.cmd.colorscheme("rose-pine")
--     -- vim.cmd('hi GitSignsAdd guibg=NONE ctermbg=NONE')
--     -- vim.cmd('hi GitSignsChange guibg=NONE ctermbg=NONE')
--     -- vim.cmd('hi GitSignsDelete guibg=NONE ctermbg=NONE')
--   end
-- }
return {
  "rebelot/kanagawa.nvim",
  name = "kanagawa",
  config = function()
    require("kanagawa").setup({
      trasparent = true,
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none"
            }
          }
        }
      },
      background = {
        dark = "dragon",
      }
    })
    vim.cmd("colorscheme kanagawa-dragon")
  end
}
