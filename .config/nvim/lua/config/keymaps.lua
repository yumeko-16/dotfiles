vim.keymap.set("i", "jj", "<ESC>", {
  noremap = true,
  silent = true,
  desc = "Exit insert mode",
})
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", {
  noremap = true,
  silent = true,
  desc = "Save file"
})
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>", {
  noremap = true,
  silent = true,
  desc = "Quit"
})
vim.keymap.set("n", "<leader>a", "ggVG", {
  noremap = true,
  silent = true,
  desc = "Select all text",
})
vim.keymap.set("n", "<leader>h", "^", {
  noremap = true,
  silent = true,
  desc = "Move to line start",
})
vim.keymap.set("n", "<leader>l", "$", {
  noremap = true,
  silent = true,
  desc = "Move to line end",
})
