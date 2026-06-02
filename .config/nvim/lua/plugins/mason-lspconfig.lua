require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "html",
    "somesass_ls",
    "emmet_ls",
    "eslint",
    "ts_ls",
    "jsonls",
    "taplo",
  },
})
