vim.o.background = "dark"
vim.cmd.colorscheme("iceberg")

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" })
vim.api.nvim_set_hl(0, "DiffAdd", { bg = "#2e3c2f" })
vim.api.nvim_set_hl(0, "DiffDelete", { bg = "#3c2c2c" })
vim.api.nvim_set_hl(0, "DiffChange", { bg = "#2c2c3c" })
vim.api.nvim_set_hl(0, "DiffText", { bg = "#3c3c5c", bold = true })
vim.api.nvim_set_hl(0, "GitGraphHash", { link = "Identifier" })
vim.api.nvim_set_hl(0, "GitGraphAuthor", { link = "Type" })
vim.api.nvim_set_hl(0, "GitGraphDate", { link = "Comment" })
vim.api.nvim_set_hl(0, "GitGraphBranchName", {
  fg = "#e4aa80",
  bold = true,
})

require("notify").setup({
  background_colour = "#161821",
})
