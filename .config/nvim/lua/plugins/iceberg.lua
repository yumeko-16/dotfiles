vim.o.background = "dark"
vim.cmd.colorscheme("iceberg")

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" })
vim.api.nvim_set_hl(0, "DiffAdd", { bg = "#2e3c2f" })
vim.api.nvim_set_hl(0, "DiffDelete", { fg = "#3a3c45", bg = "#3c2c2c" })
vim.api.nvim_set_hl(0, "DiffChange", { bg = "#2c2c3c" })
vim.api.nvim_set_hl(0, "DiffText", { bg = "#3c3c5c", bold = true })
vim.api.nvim_set_hl(0, "GitGraphHash", { link = "Identifier" })
vim.api.nvim_set_hl(0, "GitGraphAuthor", { link = "Type" })
vim.api.nvim_set_hl(0, "GitGraphDate", { link = "Comment" })
vim.api.nvim_set_hl(0, "GitGraphBranch1", { fg = "#e27878" })
vim.api.nvim_set_hl(0, "GitGraphBranch2", { fg = "#e2a478" })
vim.api.nvim_set_hl(0, "GitGraphBranch3", { fg = "#b4be82" })
vim.api.nvim_set_hl(0, "GitGraphBranch4", { fg = "#89b8c2" })
vim.api.nvim_set_hl(0, "GitGraphBranch5", { fg = "#c6a0f6" })
vim.api.nvim_set_hl(0, "GitGraphBranch6", { fg = "#f5c2e7" })
vim.api.nvim_set_hl(0, "GitGraphBranchName", { fg = "#e4aa80" })

require("notify").setup({
  background_colour = "#161821",
})
