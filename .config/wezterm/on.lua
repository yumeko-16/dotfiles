local wezterm = require("wezterm")

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
  toggle(window, "window_background_opacity", 0.9)
end)
