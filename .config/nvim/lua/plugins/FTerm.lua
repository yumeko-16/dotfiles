return {
  "numToStr/FTerm.nvim",
  keys = {
    {
      "<A-i>",
      function()
        require("FTerm").toggle()
      end,
      mode = { "n", "t" },
      desc = "Toggle Floating Terminal",
    },
  },
}
