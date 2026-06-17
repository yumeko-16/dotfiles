local prettier = { "prettierd", "prettier", stop_after_first = true }
local util = require("conform.util")

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
      command = function(ctx)
        return util.find_executable({
          "node_modules/.bin/stylelint",
          "stylelint",
        }, ctx)
      end,
      args = { "--fix", "--stdin", "--stdin-filename", "$FILENAME" },
      stdin = true,
    },
  },
})
