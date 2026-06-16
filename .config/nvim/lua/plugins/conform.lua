require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "prettierd", "prettier", stop_after_first = true },
    typescript = { "prettierd", "prettier", stop_after_first = true },
    javascriptreact = { "prettierd", "prettier", stop_after_first = true },
    typescriptreact = { "prettierd", "prettier", stop_after_first = true },
    css = { "prettierd", "prettier", stop_after_first = true },
    scss = { "prettierd", "prettier", stop_after_first = true },
    html = { "prettierd", "prettier", stop_after_first = true },
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
