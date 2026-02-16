return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "lua_ls",
      "html",
      "cssls",
      "somesass_ls",
      "emmet_ls",
      "ts_ls",
      "jsonls",
      "taplo",
    },
  },
  dependencies = {
    "mason-org/mason.nvim",
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function(_, opts)
    require("mason-lspconfig").setup(opts)

    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    for _, server in ipairs(opts.ensure_installed) do
      vim.lsp.config(server, {
        capabilities = capabilities,
      })

      vim.lsp.enable(server)
    end
  end,
}
