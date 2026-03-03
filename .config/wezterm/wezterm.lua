local wezterm = require("wezterm")
local config = wezterm.config_builder()
local act = wezterm.action
local keys = require("keymaps")
local is_windows = wezterm.target_triple == "x86_64-pc-windows-msvc"
require("on")

config.keys = keys
config.font = wezterm.font("HackGen35 Console NF", {
  weight = "Regular",
  stretch = "Normal",
})
config.font_size = 16
config.line_height = 1.4
config.use_ime = true
config.color_scheme = "iceberg-dark"
config.window_background_opacity = 0.9
config.win32_system_backdrop = "Acrylic"
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

if is_windows then
  config.default_prog = { "bash", "--login", "-i" }
  config.set_environment_variables = {
    MSYSTEM = "MINGW64",
  }
  config.font_size = 12

  table.insert(config.keys, {
    key = "v",
    mods = "CTRL",
    action = act.PasteFrom("Clipboard"),
  })
end

return config
