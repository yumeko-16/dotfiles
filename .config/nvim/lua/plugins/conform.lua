local conform = require("conform")
local util = require("conform.util")
local is_win = vim.fn.has("win32") == 1

local function bin_fallback(name)
  return is_win and (name .. ".cmd") or name
end

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

local prettier_bin_paths = is_win and {
  "node_modules/.bin/prettier.cmd",
  "node_modules/.bin/prettier",
} or {
  "node_modules/.bin/prettier",
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
      command = bin_fallback("prettierd"),
    },

    prettier = {
      command = util.find_executable(prettier_bin_paths, bin_fallback("prettier")),
      args = { "--stdin-filepath", "$FILENAME" },
    },

    stylelint = {
      command = util.find_executable({
        "node_modules/.bin/stylelint.cmd",
        "node_modules/.bin/stylelint",
      }, bin_fallback("stylelint")),
      args = {
        "--fix",
        "--stdin-filename",
        "$FILENAME",
      },
    },
  },
})
