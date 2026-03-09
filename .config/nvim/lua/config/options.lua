local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true
opt.list = true
opt.listchars = {
  tab = " →",
  trail = "•",
  eol = "↲",
}
opt.wrap = true
opt.breakindent = true
opt.signcolumn = "yes"
opt.termguicolors = true
opt.clipboard = "unnamedplus"
