local wezterm = require("wezterm")
local act = wezterm.action
local is_windows = wezterm.target_triple == "x86_64-pc-windows-msvc"

local keys = {
  {
    key = "s",
    mods = "LEADER",
    action = act.ShowLauncherArgs({ flags = "WORKSPACES", title = "Select workspace" }),
  },
}

if is_windows then
  table.insert(keys, {
    key = "o",
    mods = "CTRL|SHIFT",
    action = act.EmitEvent("toggle-opacity"),
  })
else
  table.insert(keys, {
    key = "o",
    mods = "CMD|SHIFT",
    action = act.EmitEvent("toggle-opacity"),
  })
end

return keys
