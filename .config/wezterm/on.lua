local wezterm = require("wezterm")
local is_windows = wezterm.target_triple == "x86_64-pc-windows-msvc"
local SOLID_LEFT_ARROW = wezterm.nerdfonts.ple_lower_right_triangle
local SOLID_RIGHT_ARROW = wezterm.nerdfonts.ple_upper_left_triangle

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
  local background = "#5c6d74"
  local foreground = "#ffffff"
  local edge_background = "none"

  if tab.is_active then
    background = "#ae8b2d"
    foreground = "#ffffff"
  end

  local edge_foreground = background
  local title = "   " .. wezterm.truncate_right(tab.active_pane.title, max_width - 1) .. "   "

  return {
    { Background = { Color = edge_background } },
    { Foreground = { Color = edge_foreground } },
    { Text = SOLID_LEFT_ARROW },
    { Background = { Color = background } },
    { Foreground = { Color = foreground } },
    { Text = title },
    { Background = { Color = edge_background } },
    { Foreground = { Color = edge_foreground } },
    { Text = SOLID_RIGHT_ARROW },
  }
end)

local function toggle(window, key, value)
  local overrides = window:get_config_overrides() or {}

  if overrides[key] == nil then
    overrides[key] = value
  else
    overrides[key] = nil
  end

  window:set_config_overrides(overrides)
end

wezterm.on("toggle-opacity", function(window, _)
  toggle(window, "window_background_opacity", 0.6)
end)

wezterm.on("toggle-blur", function(window, _)
  if is_windows then
    toggle(window, "win32_system_backdrop", "Disable")
  else
    toggle(window, "macos_window_background_blur", 0)
  end
end)
