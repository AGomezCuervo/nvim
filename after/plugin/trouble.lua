local trouble = require("trouble")

trouble.setup({
  icons = false,
  signs = {
    -- icons / text used for a diagnostic
    error = "E",
    warning = "W",
    hint = "H",
    information = "",
    other = "O",
  },
})

vim.keymap.set('n', '<leader>to', ':TroubleToggle<CR>', {})
vim.keymap.set('n', '<leader>tl', ':Trouble loclist<CR>', {})
vim.keymap.set('n', '<leader>tq', ':Trouble quickfix<CR>', {})
