return {
  "cocopon/iceberg.vim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("iceberg")

    vim.cmd([[
      highlight Normal     guibg=NONE
      highlight NormalNC   guibg=NONE
      highlight SignColumn guibg=NONE
      highlight EndOfBuffer guibg=NONE
    ]])
  end
}
