require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "html",
    "cssls",
    "emmet_ls",
    "eslint",
    "ts_ls",
    "jsonls",
    "taplo",
  },
  automatic_enable = false,
})
