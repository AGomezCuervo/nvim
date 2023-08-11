local status, lualine = pcall(require, "lualine")
if not status then
  return
end

lualine.setup({
  options = {
    icons_enabled = false,
    theme = "palenight"
  },
  sections= {
    lualine_c = {{'filename', path = 1}}
  }
})
