local cmp = require('cmp')

cmp.setup({
  require('luasnip.loaders.from_vscode').lazy_load(),
  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "nvim_lua" },
    { name = "buffer" },
    { name = "path" },
  },
  preselect = "item",
  completion = {
    completeopt = "menu,menuone,noinsert"
  },
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = false})
  }
})
