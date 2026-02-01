return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  keys = {
    { "<leader>z",  function() Snacks.zen() end, desc = "Toggle Zen Mode" },
  },
  ---@type snacks.Config
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    dashboard = { enabled = true },
    indent = { enabled = true },
    notifier = { enabled = true },
    scroll = { enabled = true },
    zen = {
      enabled = true,
      toggles = {
        dim = false,
        git_signs = false,
        mini_diff_signs = false,
      },
    },
  },
}
