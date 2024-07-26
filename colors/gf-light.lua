local function set_colors()
  -- local color = "c1c5c1"
  local colors = {
    background = "#212126",
    white = "#FFFFFF",
    black = "#181616",
    rose = "#F5DDD1",
    green = "#C3F5D3",
    orange = "#c18236",
    blue = "#90a8a4",
    _white = "#FFFFFF",
    yellow = "#F5D499",
    light_yellow = "#F5F3D1",
    gray = "#B4B4B4",
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
    Normal = { bg = colors.background },
    LineNr = { fg = colors.gray },
    SignColumn = { fg = colors.white, bg = "NONE" },
    DiffAdd = { bg = colors.diff_add },
    DiffChange = { bg = colors.diff_change },
    DiffDelete = { bg = colors.diff_delete_bg, fg = colors.diff_delete_fg },
    DiffText = { bg = colors.diff_text },


    Type = { fg = colors._white },
    Identifier = { fg = colors.white },
    Function = { fg = colors.white },
    Keyword = { fg = colors.white },
    Number = { fg = colors.green },
		Operator = { fg = colors.yellow },
    Constant = { fg = colors.white },
    PreProc = { fg = colors.light_yellow },
    Statement = { fg = colors.white },
    MatchParen = { fg = colors.warning },
    EndOfBuffer = { fg = colors.gray },
    CursorLine = { bg="NONE" },
    CursorLineNr = { fg= colors.yellow },
    CmpItemKind = { fg = colors.white },
    CmpItemAbbr = { fg = colors.orange },
    Visual = { bg = colors.visual_bg },
    IncSearch = { link = "CurSearch" },
		Search = { fg = colors.black, bg = colors.white },
    CurSearch = { fg = colors.white, bg = colors.gray },
    DiagnosticUnnecessary = { link = "DiagnosticWarn" },
    Directory = { fg = colors._white },
    Special = { fg  = colors.rose },
    Character = { fg = colors.rose },
    Title = { fg = colors.type },
    NormalFloat = { fg = colors.white, bg = colors.black },
    NonText = { fg = colors.white },

    ["@keyword.import"] = { fg = colors.white },
    ["@variable"] = { fg = colors.white },
    ["@string"] = { fg = colors.rose },
    ["@include"] = { fg = colors.white },
    ["@comment"] = { fg = colors.gray },
    ["@function"] = { fg = colors.white },
    ["@keyword.return"] = { fg = colors._white },
    ["@keyword.c"] = { fg = colors._white },
    ["@type"] = { fg = colors._white },
    ["@type.builtin"] = { link = "@type" },
    ["@lsp.type.macro.c"] = { fg = colors._white },
    ["@property"] = { fg = colors.white },
    ["@punctuation.delimiter"] = { fg = colors.yellow },
    ["@punctuation.bracket"] = { fg = colors.yellow },
    ["@punctuation.special"] = { fg = colors.yellow },
    ["@field"] = {fg = colors.white},
    ["@constructor"] = { link = "@punctuation.bracket" },


		Pmenu = { fg = colors.white,bg = colors.bg_blue },
    PmenuSel = { fg = "NONE", bg = colors.sel_bg_blue },
    PmenuSBar = { bg = colors.bg_blue },
    PmenuThumb = { bg = colors.sel_bg_blue },

    lualine_b_diff_removed_normal = { fg = colors._white },


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
vim.g.colors_name = "gf-light"
set_colors()
