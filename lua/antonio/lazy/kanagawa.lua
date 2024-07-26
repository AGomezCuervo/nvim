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
      terminalColors = false,
      colors = {
        palette = {
          fujiwhite = "#ffffff", --[[ Main foreground ]]
          oldWhite = "#c1c5c1",
          sumiInk0 = "#c1c5c1",
          sumiInk1 = "#c1c5c1",
          sumiInk2 = "#c1c5c1",
          sumiInk3 = "#131313", --[[ Main background ]]
          sumiInk4 = "#c1c5c1",
          fujiGray = "#c18236", --[[ Comments ]]
          oniViolet = "#c1c5c1", --[[ Statements and keywords ]]
          crystalBlue = "#c1c5c1", --[[ Functions and titles ]]
          springViolet2 = "#c1c5c1", --[[ Brackets and punctuation ]]
          springBlue = "#c1c5c1", --[[ Specials and builtin functions ]]
          waveAqua2 = "#c1c5c1", --[[ Types ]]
          springGreen = "#82bf60", --[[ Strings ]]
          boatYellow2 = "#c1c5c1", --[[ Operators, RegEx]]
          carpYellow = "#c1c5c1", --[[ Identifiers ]]
          sakuraPink = "#c1c5c1", --[[ Numbers ]]
          waveRed = "#c1c5c1", --[[ Standout specials (builtin variables) ]]
          peachRed = "#c1c5c1", --[[ Standout specials 2 (exception handling, return)]]
          surimiOrange = "#c1c5c1", --[[ Constants, imports, booleans ]]
          katanaGray = "#c1c5c1", --[[ Deprecated ]]
          boatYellow1 = "#c1c5c1", --[[ Not used ]]
          lightBlue = "#c1c5c1", --[[ Not used ]]
        },
        theme = {
          all = {
            ui = {
              bg_gutter = "none"
            }
          }
        }
      },
      background = {
        dark = "dragon",
      }
    })
  end
}
