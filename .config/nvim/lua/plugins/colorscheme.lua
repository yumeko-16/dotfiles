return {
  {
    "cocopon/iceberg.vim",
    lazy = false,
    priority = 1000,
    config = function()
      -- Apply colorscheme
      vim.cmd.colorscheme("iceberg")

      -- Force transparent backgrounds
      local transparent_groups = {
        "Normal",
        "NormalFloat",
        "SignColumn",
        "EndOfBuffer",
        "MsgArea",
        "FloatBorder",
        "LineNr",
        "CursorLineNr",
        "FoldColumn",
      }

      for _, group in ipairs(transparent_groups) do
        vim.api.nvim_set_hl(0, group, { bg = "none" })
      end
    end,
  },
}
