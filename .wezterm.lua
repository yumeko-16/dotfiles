-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Font
config.font_size = 16
config.font = wezterm.font("HackGen35 console NF", {
	weight = "Regular",
	stretch = "Normal",
})
config.line_height = 1.4

-- Background transparency
config.window_background_opacity = 0.95
config.macos_window_background_blur = 0

-- Color scheme
config.color_scheme = "iceberg-dark"

local act = require "wezterm".action
config.keys = {
 {
    mods = 'LEADER',
    key = 's',
    action = act.ShowLauncherArgs { flags = 'WORKSPACES' , title = "Select workspace" },
  },
}

return config
