return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "lua_ls",
      "ts_ls",
      "html",
      "taplo",
    },
  },
  dependencies = {
    "mason-org/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function(_, opts)
    require("mason-lspconfig").setup({
      ensure_installed = opts.ensure_installed,
      handlers = {
        function(server_name)
          require("lspconfig")[server_name].setup({})
        end,
      },
    })
  end,
}
