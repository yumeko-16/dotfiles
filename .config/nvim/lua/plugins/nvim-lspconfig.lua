local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config("lua_ls", {
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})

vim.lsp.config("html", {
  capabilities = capabilities,
})

vim.lsp.config("cssls", {
  capabilities = capabilities,
  settings = {
    css = { validate = false },
    scss = { validate = false },
    less = { validate = false },
  },
})

vim.lsp.config("somesass_ls", {
  capabilities = capabilities,
})

vim.lsp.config("stylelint_lsp", {
  capabilities = capabilities,
})

vim.lsp.config("emmet_ls", {
  capabilities = capabilities,
})

vim.lsp.config("eslint", {
  capabilities = capabilities,
})

vim.lsp.config("ts_ls", {
  capabilities = capabilities,
})

vim.lsp.config("jsonls", {
  capabilities = capabilities,
})

vim.lsp.config("taplo", {
  capabilities = capabilities,
})

vim.lsp.enable("lua_ls")
vim.lsp.enable("html")
vim.lsp.enable("cssls")
vim.lsp.enable("somesass_ls")
vim.lsp.enable("stylelint_lsp")
vim.lsp.enable("emmet_ls")
vim.lsp.enable("eslint")
vim.lsp.enable("ts_ls")
vim.lsp.enable("jsonls")
vim.lsp.enable("taplo")
