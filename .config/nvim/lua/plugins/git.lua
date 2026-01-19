return {
  {
    "lewis6991/gitsigns.nvim",
    event = "BufReadPre",
    config = true,
  },
  {
    "tpope/vim-fugitive",
    cmd = { "Git", "Gdiffsplit" },
  },
}
