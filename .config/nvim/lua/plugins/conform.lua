local conform = require("conform")
local util = require("conform.util")

local prettier_formatters = {
  "prettierd",
  "prettier",
  stop_after_first = true,
}

local css_formatters = {
  "prettierd",
  "prettier",
  "stylelint",
}

conform.setup({
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = prettier_formatters,
    typescript = prettier_formatters,
    javascriptreact = prettier_formatters,
    typescriptreact = prettier_formatters,
    html = prettier_formatters,
    css = css_formatters,
    scss = css_formatters,
  },

  format_on_save = {
    timeout_ms = 3000,
  },

  formatters = {
    prettierd = {
      command = "prettierd",
    },

    prettier = {
      command = function(_, ctx)
        return vim.fs.find({ "node_modules/.bin/prettier" }, {
          upward = true,
          path = vim.fs.dirname(ctx.filename),
          type = "file",
        })[1] or "prettier"
      end,
      args = { "--stdin-filepath", "$FILENAME" },
    },

    stylelint = {
      command = util.find_executable({
        "node_modules/.bin/stylelint.cmd",
        "node_modules/.bin/stylelint",
      }, vim.fn.has("win32") == 1 and "stylelint.cmd" or "stylelint"),
      args = {
        "--fix",
        "--stdin-filename",
        "$FILENAME",
      },
    },
  },
})
