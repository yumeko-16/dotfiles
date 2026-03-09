return {
  {
    "cocopon/iceberg.vim",
    lazy = false,
    priority = 1000,
    enabled = true,
    config = function()
      vim.opt.termguicolors = true
      vim.cmd.colorscheme("iceberg")

      vim.cmd([[
        highlight Normal       guibg=NONE
        highlight NormalNC     guibg=NONE
        highlight DiffAdd      guifg=NONE guibg=#1f3f1f
        highlight DiffDelete   guifg=NONE guibg=#5f0000
        highlight DiffChange   guifg=NONE guibg=#3f464d
        highlight DiffText     guifg=NONE guibg=#586069
      ]])

      vim.api.nvim_set_hl(0, "NotifyBackground", { bg = "#161821" })

      require("notify").setup({
        background_colour = "#161821",
      })
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    enabled = false,
    opts = {
      transparent = true,
      theme = "dragon",
      background = {
        dark = "dragon",
      },
    },
    config = function(_, opts)
      require("kanagawa").setup(opts)
      vim.cmd("colorscheme kanagawa")
    end,
  },
}
