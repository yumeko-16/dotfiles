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
  {
    "tpope/vim-fugitive",
    cmd = { "Git", "Gdiffsplit" },
    config = function()
      vim.api.nvim_create_autocmd("DiffUpdated", {
        callback = function()
          for _, win in ipairs(vim.api.nvim_list_wins()) do
            if vim.api.nvim_win_get_option(win, "diff") then
              vim.api.nvim_win_set_option(win, "wrap", true)
            end
          end
        end,
      })
    end,
  },
}
