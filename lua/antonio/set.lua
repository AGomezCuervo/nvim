local opt = vim.opt
--editor
opt.relativenumber = true
opt.number = true
opt.showmode = false
opt.scrolloff = 5
opt.spelllang = "es"

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
opt.linebreak = true
opt.breakindent = true


-- backspace
opt.backspace = "indent,eol,start"

--clipboard
-- opt.clipboard = "unnamedplus"

--split windows
opt.splitright = true
opt.splitbelow = true

-- opt.colorcolumn = "80"
