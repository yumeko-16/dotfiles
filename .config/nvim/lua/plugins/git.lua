return {
  {
    "lewis6991/gitsigns.nvim",
    opts = function(_, opts)
      opts.current_line_blame = true

      vim.api.nvim_set_hl(0, "GitSignsCurrentLineBlame", {
        fg = "#565f89",
        italic = true,
      })
    end,
  },
  {
    "petertriho/nvim-scrollbar",
    config = function()
      require("scrollbar").setup({
        handlers = {
          gitsigns = true,
        },
        marks = {
          GitAdd = {
            text = "█",
          },
          GitChange = {
            text = "█",
          },
        },
      })

      require("scrollbar.handlers.gitsigns").setup()
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
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },
}
