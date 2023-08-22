local trouble = require("trouble")

trouble.setup({})

vim.keymap.set('n', '<leader>to', ':TroubleToggle<CR>', {})
vim.keymap.set('n', '<leader>tl', ':Trouble loclist<CR>', {})
vim.keymap.set('n', '<leader>tq', ':Trouble quickfix<CR>', {})
