local opt = vim.opt

--editor
opt.relativenumber = true
opt.number = true
opt.showmode = false
opt.scrolloff = 5

--tab & indentation
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
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
opt.clipboard = "unnamedplus"

--split windows
opt.splitright = true
opt.splitbelow = true

--spelling
--opt.spelllang = "en_us"
--opt.spell = true
