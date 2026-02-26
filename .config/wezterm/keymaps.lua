local wezterm = require("wezterm")
local act = wezterm.action

local keys = {
  {
    key = "s",
    mods = "LEADER",
    action = act.ShowLauncherArgs({ flags = "WORKSPACES", title = "Select workspace" }),
  },
  {
    key = "o",
    mods = "CMD|SHIFT",
    action = act.EmitEvent("toggle-opacity"),
  },
  {
    key = "b",
    mods = "CMD|SHIFT",
    action = act.EmitEvent("toggle-blur"),
  },
}

return keys
