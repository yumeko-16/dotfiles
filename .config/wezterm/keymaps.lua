local wezterm = require("wezterm")
local act = wezterm.action

local keys = {
  {
    key = "s",
    mods = "LEADER",
    action = act.ShowLauncherArgs({ flags = "WORKSPACES", title = "Select workspace" }),
  },
}

table.insert(keys, {
  key = "]",
  mods = "CTRL",
  action = act.EmitEvent("toggle-opacity"),
})

return keys
