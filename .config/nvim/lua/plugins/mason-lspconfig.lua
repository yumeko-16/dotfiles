require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "html",
    "cssls",
    "somesass_ls",
    "stylelint_lsp",
    "emmet_ls",
    "eslint",
    "ts_ls",
    "jsonls",
    "taplo",
  },
})
