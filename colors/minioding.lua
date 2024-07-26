local function set_colors()
  local colors = {
    white = "#c1c5c1",
    black = "#181616",
    green = "#82bf60",
    orange = "#c18236",
    blue = "#90a8a4",
    yellow = "#fddd4f",
    gray = "#54546d",
    warning = "#ff9e3b",
    bg_blue = "#223249",
    sel_bg_blue = "#2D4F67",
    visual_bg = "#223249",
    beigue = "#C8C093",
    diff_add = "#2b3328",
    diff_change = "#252535",
    diff_delete_bg = "#43242b",
    diff_delete_fg = "#c34043",
    diff_text = "#49443c",
  }

  local highlight_groups = {
    LineNr = { fg = colors.gray },
    SignColumn = { fg = colors.white, bg = "NONE" },
    DiffAdd = { bg = colors.diff_add },
    DiffChange = { bg = colors.diff_change },
    DiffDelete = { bg = colors.diff_delete_bg, fg = colors.diff_delete_fg },
    DiffText = { bg = colors.diff_text },


    Type = { fg = colors.blue },
    Identifier = { fg = colors.white },
    Function = { fg = colors.white },
    Keyword = { fg = colors.white },
    Number = { fg = colors.white },
		Operator = { fg = colors.white },
    Constant = { fg = colors.white },
    PreProc = { fg = colors.white },
    Statement = { fg = colors.white },
    MatchParen = { fg = colors.warning },
    EndOfBuffer = { fg = colors.gray },
    CursorLine = { bg="Grey11" },
    CursorLineNr = { fg= colors.yellow },
    CmpItemKind = { fg = colors.white },
    CmpItemAbbr = { fg = colors.orange },
    Visual = { bg = colors.visual_bg },
    IncSearch = { link = "CurSearch" },
		Search = { fg = colors.black, bg = colors.white },
    CurSearch = { fg = colors.white, bg = colors.gray },
    DiagnosticUnnecessary = { link = "DiagnosticWarn" },
    Directory = { fg = colors.blue },
    Special = { fg  = colors.green },
    Character = { fg = colors.green },
    Title = { fg = colors.type },
    NormalFloat = { fg = colors.white, bg = colors.black },
    NonText = { fg = colors.white },

    ["@keyword.import"] = { fg = colors.white },
    ["@variable"] = { fg = colors.white },
    ["@string"] = { fg = colors.green },
    ["@include"] = { fg = colors.white },
    ["@comment"] = { fg = colors.orange },
    ["@function"] = { fg = colors.white },
    ["@keyword.return"] = { fg = colors.blue },
    ["@keyword.c"] = { fg = colors.blue },
    ["@type"] = { fg = colors.blue },
    ["@type.builtin"] = { link = "@type" },
    ["@lsp.type.macro.c"] = { fg = colors.blue },
    ["@property"] = { fg = colors.white },
    ["@punctuation.delimiter"] = { fg = colors.white },
    ["@punctuation.bracket"] = { fg = colors.white },
    ["@punctuation.special"] = { fg = colors.white },
    ["@field"] = {fg = colors.white},
    ["@constructor"] = { link = "@punctuation.bracket" },


		Pmenu = { fg = colors.white,bg = colors.bg_blue },
    PmenuSel = { fg = "NONE", bg = colors.sel_bg_blue },
    PmenuSBar = { bg = colors.bg_blue },
    PmenuThumb = { bg = colors.sel_bg_blue },

    lualine_b_diff_removed_normal = { fg = colors.blue },


  }
  for group, highlight in pairs(highlight_groups) do
    vim.api.nvim_set_hl(0, group, highlight)
  end
end

vim.opt.termguicolors = true
if vim.g.colors_name then
  vim.cmd("hi clear")
  vim.cmd("syntax reset")
end
vim.g.colors_name = "minioding"
set_colors()
