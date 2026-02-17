return {
  "norcalli/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup({
      "*",
    }, {
      RRGGBBAA = true, -- #RRGGBBAA hex codes
      css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
    })
  end,
}
