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
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
    config = function()
      if vim.fn.has("win32") == 1 then
        local username = os.getenv("USERNAME")
        vim.g.lazygit_path = "C:/Users/" .. username .. "/tools/lazygit/lazygit.exe"
      end
    end,
  },
}
