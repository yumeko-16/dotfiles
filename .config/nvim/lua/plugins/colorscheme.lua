return {
  "cocopon/iceberg.vim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("iceberg")

    vim.cmd([[
      highlight Normal       guibg=NONE
      highlight NormalNC     guibg=NONE
      highlight DiffAdd      guifg=NONE guibg=#182a1e
      highlight DiffDelete   guifg=NONE guibg=#2b1618
      highlight DiffChange   guifg=NONE guibg=NONE
      highlight DiffText     guifg=NONE guibg=#2a2113
    ]])
  end,
}
