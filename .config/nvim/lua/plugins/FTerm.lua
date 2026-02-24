return {
  "numToStr/FTerm.nvim",

  config = function()
    local opts = {}

    if vim.fn.has("win32") == 1 then
      vim.opt.shellcmdflag = "-c"
    end

    require("FTerm").setup(opts)
  end,

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
