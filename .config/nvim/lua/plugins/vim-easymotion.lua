return {
  "easymotion/vim-easymotion",
  config = function()
    vim.keymap.set("n", "<Leader><Leader>f", "<Plug>(easymotion-bd-f)")
    vim.keymap.set("n", "<Leader><Leader>w", "<Plug>(easymotion-bd-w)")
  end,
}
