local prettier = { "prettierd", "prettier", stop_after_first = true }
local util = require("conform.util")
local stylelint_cmd = vim.fn.has("win32") == 1 and "stylelint.cmd" or "stylelint"

require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = prettier,
    typescript = prettier,
    javascriptreact = prettier,
    typescriptreact = prettier,
    css = prettier,
    scss = prettier,
    html = prettier,
  },

  format_on_save = {
    timeout_ms = 3000,
  },

  format_after_save = function(bufnr)
    local ft = vim.bo[bufnr].filetype
    if ft == "css" or ft == "scss" then
      return {
        async = true,
        formatters = { "stylelint" },
      }
    end
  end,

  formatters = {
    stylelint = {
      command = util.find_executable({
        "node_modules/.bin/stylelint.cmd",
        "node_modules/.bin/stylelint",
      }, stylelint_cmd),
    },
  },
})
