return {
  {
    "petertriho/nvim-scrollbar",
    opts = {
      handle = { color = "#3b3f4c" },
      marks = {
        GitAdd = { text = "█" },
        GitChange = { text = "█" },
      },
      handlers = { gitsigns = true },
    },
    config = function(_, opts)
      require("scrollbar").setup(opts)
      require("scrollbar.handlers.gitsigns").setup()

      vim.api.nvim_set_hl(0, "ScrollbarGitAdd", { link = "GitGutterAdd" })
      vim.api.nvim_set_hl(0, "ScrollbarGitChange", { link = "GitGutterChange" })
      vim.api.nvim_set_hl(0, "ScrollbarGitDelete", { link = "GitGutterDelete" })
    end,
  },
}
