vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Snacks animations
-- Set to `false` to globally disable all snacks animations
vim.g.snacks_animate = false

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.smartindent = true
vim.opt.list = true
vim.opt.listchars = {
  tab = " →",
  trail = "•",
}
vim.opt.wrap = true
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"
