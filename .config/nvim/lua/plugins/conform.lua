return {
  "stevearc/conform.nvim",
  opts = function()
    local util = require("conform.util")

    return {
      formatters_by_ft = {
        lua = { "stylua" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        css = { "stylelint", "prettier" },
        scss = { "stylelint", "prettier" },
        html = { "prettier" },
      },

      format_on_save = {
        timeout_ms = 3000,
      },

      formatters = {
        stylelint = {
          command = "npx",
          args = {
            "stylelint",
            "--fix",
            "--allow-empty-input",
            "--stdin",
            "--stdin-filename",
            "$FILENAME",
          },
          stdin = true,

          condition = util.root_file({
            ".stylelintrc",
            ".stylelintrc.js",
            "stylelint.config.js",
          }),
        },
      },
    }
  end,
}
