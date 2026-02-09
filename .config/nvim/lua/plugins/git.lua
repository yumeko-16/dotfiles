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
    "tpope/vim-fugitive",
    cmd = { "Git", "Gdiffsplit" },
  },
}
