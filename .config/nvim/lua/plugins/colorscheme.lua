return {
  "cocopon/iceberg.vim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("iceberg")

    vim.cmd([[
      highlight Normal       guibg=NONE
      highlight NormalNC     guibg=NONE
      highlight DiffAdd      guifg=NONE
      highlight DiffChange   guifg=NONE
      highlight DiffDelete   guifg=NONE
      highlight DiffText     guifg=NONE
    ]])
  end,
}
