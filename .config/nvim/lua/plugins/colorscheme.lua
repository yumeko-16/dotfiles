require("kanagawa").setup({
  transparent = true,
  theme = "dragon",
  background = { -- map the value of 'background' option to a theme
    dark = "dragon",
  },
})

-- setup must be called before loading
vim.cmd("colorscheme kanagawa")
