return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      if vim.fn.has("win32") == 1 and vim.fn.executable("zig") == 1 then
        require("nvim-treesitter.install").compilers = { "zig" }
      end
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
}
