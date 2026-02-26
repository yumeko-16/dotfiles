local wezterm = require("wezterm")
local config = wezterm.config_builder()
local keys = require("keymaps")
require("on")

config.keys = keys

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
  config.default_prog = { "bash", "--login", "-i" }
  config.set_environment_variables = {
    MSYSTEM = "MINGW64",
  }
  config.font_size = 12
else
  config.font_size = 16
end

config.font = wezterm.font("HackGen35 Console NF", {
  weight = "Regular",
  stretch = "Normal",
})
config.line_height = 1.4
config.use_ime = true
config.color_scheme = "iceberg-dark"
config.window_background_opacity = 0.85
config.macos_window_background_blur = 20
config.window_decorations = "RESIZE"
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}
config.show_new_tab_button_in_tab_bar = false
config.colors = {
  tab_bar = {
    inactive_tab_edge = "none",
  },
}

return config
