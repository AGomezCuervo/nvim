local opt = vim.opt

--editor
opt.relativenumber = true
opt.number = true
opt.showmode = false

--tab & indentation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true

--search settings
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

--line wrapping
opt.wrap = true

-- backspace
opt.backspace = "indent,eol,start"

--clipboard
opt.clipboard:append("unnamedplus")

--split windows
opt.splitright = true
opt.splitbelow = true

--auto save
opt.autowrite = true

--spelling
opt.spelllang = "en_us"
opt.spell = true
