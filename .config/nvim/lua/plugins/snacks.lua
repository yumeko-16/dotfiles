return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,

  ---@type snacks.Config
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    indent = { enabled = true },
    scroll = { enabled = true },
    zen = {
      enabled = true,
      toggles = {
        dim = false,
        git_signs = false,
        mini_diff_signs = false,
      },
    },
    picker = {
      sources = {
        files = {
          hidden = true,
          no_ignore = true,
        },
      },
    },
  },

  keys = {
    -- find
    {
      "<leader>fb",
      function()
        Snacks.picker.buffers()
      end,
      desc = "Buffers",
    },
    {
      "<leader>fr",
      function()
        Snacks.picker.recent()
      end,
      desc = "Recent",
    },
    {
      "<leader>z",
      function()
        Snacks.zen()
      end,
      desc = "Toggle Zen Mode",
    },
  },
}
