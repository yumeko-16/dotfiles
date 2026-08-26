require("diffview").setup({
  keymaps = {
    file_panel = {
      {
        "n",
        "sl",
        "<C-w>l",
        { desc = "Move to right window" },
      },
    },
  },
})
