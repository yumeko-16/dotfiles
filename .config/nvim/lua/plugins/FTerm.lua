return {
  "numToStr/FTerm.nvim",

  config = function()
    local opts = {}

    if vim.fn.has("win32") == 1 then
      opts.cmd = {
        "C:/Program Files/Git/bin/bash.exe",
        "--login",
        "-i",
      }

      vim.opt.shell = "C:/Program Files/Git/bin/bash.exe"
      vim.opt.shellcmdflag = "-c"
      vim.opt.shellquote = ""
      vim.opt.shellxquote = ""
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
