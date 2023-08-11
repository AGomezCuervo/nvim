local opt = vim.opt

--numbers
opt.relativenumber = true
opt.number = true

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
opt.clipboard:append("unnamedplus")

--split windows
opt.splitright = true
opt.splitbelow = true

--auto save
opt.autowrite = true

--spelling
opt.spelllang = "en_us"
opt.spell = true
