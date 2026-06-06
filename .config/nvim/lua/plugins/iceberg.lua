vim.o.background = "dark"
vim.cmd.colorscheme("iceberg")

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" })
vim.api.nvim_set_hl(0, "GitGraphHash", { link = "Identifier" })
vim.api.nvim_set_hl(0, "GitGraphAuthor", { link = "Type" })
vim.api.nvim_set_hl(0, "GitGraphDate", { link = "Comment" })

require("notify").setup({
  background_colour = "#161821",
})
