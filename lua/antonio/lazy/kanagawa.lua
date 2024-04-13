return {
  "rebelot/kanagawa.nvim",
  name = "kanagawa",
  config = function()
    require("kanagawa").setup({
      compile = false,
      undercurl = true,
      commentStyle = { bold = false},
      functionStyle = { bold = false},
      keywordStyle = { bold = false},
      statementStyle = { bold = false},
      typeStyle = { bold = false},
      transparent = false,
      dimInactive = false,
      terminalColors = true,
      colors = {
        palette = {
          fujiwhite = "#C1C5C1", --[[ Main foreground ]]
          oldWhite = "#C1C5C1",
          sumiInk0 = "#131313",
          sumiInk1 = "#131313",
          sumiInk2 = "#131313",
          sumiInk3 = "#131313", --[[ Main background ]]
          -- sumiInk4 = "#131313",
          fujiGray = "#C18236", --[[ Comments ]]
          oniViolet = "#FDDD4F", --[[ Statements and keywords ]]
          crystalBlue = "#90A8A4", --[[ Functions and titles ]]
          springViolet2 = "#C1C5C1", --[[ Brackets and punctuation ]]
          springBlue = "#FDDD4F", --[[ Specials and builtin functions ]]
          waveAqua2 = "#90a8a4", --[[ Types ]]
          springGreen = "#82BF60", --[[ Strings ]]
          boatYellow2 = "#C1C5C1", --[[ Operators, RegEx]]
          carpYellow = "#C1C5C1", --[[ Identifiers ]]
          sakuraPink = "#C1C5C1", --[[ Numbers ]]
          waveRed = "#C1C5C1", --[[ Standout specials (builtin variables) ]]
          peachRed = "#C1C5C1", --[[ Standout specials 2 (exception handling, return)]]
          surimiOrange = "#90A8A4", --[[ Constants, imports, booleans ]]
          katanaGray = "#90a8a4", --[[ Deprecated ]]
          -- boatYellow1 = "#C1C5C1", --[[ Not used ]]
          -- lightBlue = "#C1C5C1", --[[ Not used ]]
        },
        theme = {
          all = {
            ui = {
              bg_gutter = "none"
            }
          }
        }
      },
      overrides = function (colors)
        return {
          CursorLine = {bg = "NONE"},
          CursorLineNr = {fg = "#FDDD4F", bold = false},
          TelescopeSelection  = {bg = "#363646"},
          Boolean = {bold = false},
          htmlTag = {fg = "#90a8a4"},
          htmlTagName = {fg = "#90a8a4"},
          htmlEndTag = {fg = "#90a8a4"},
          htmlBold = {bold = false},
          htmlH1 = {fg = "#C1C5C1",bold = false},
        }
      end,
      background = {
        dark = "dragon",
      }
    })
  end
}
