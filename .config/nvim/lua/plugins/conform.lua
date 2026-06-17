local prettier = { "prettierd", "prettier", stop_after_first = true }

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
      command = vim.fn.executable("stylelint") == 1 and "stylelint" or "stylelint.cmd",
      args = { "--fix", "--stdin", "--stdin-filename", "$FILENAME" },
      stdin = true,
    },
  },
})
