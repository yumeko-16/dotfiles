vim.pack.add({
  "https://github.com/MunifTanjim/nui.nvim", -- for noice.nvim
  "https://github.com/easymotion/vim-easymotion",
  "https://github.com/folke/noice.nvim",
  "https://github.com/folke/snacks.nvim",
  "https://github.com/folke/which-key.nvim",
  "https://github.com/hrsh7th/cmp-buffer",
  "https://github.com/hrsh7th/cmp-nvim-lsp",
  "https://github.com/hrsh7th/cmp-path",
  "https://github.com/hrsh7th/nvim-cmp",
  "https://github.com/isakbm/gitgraph.nvim",
  "https://github.com/kevinhwang91/nvim-hlslens",
  "https://github.com/lewis6991/gitsigns.nvim",
  "https://github.com/mason-org/mason.nvim",
  "https://github.com/mason-org/mason-lspconfig.nvim",
  "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/ntpeters/vim-better-whitespace",
  "https://github.com/nvim-lualine/lualine.nvim",
  "https://github.com/nvim-mini/mini.nvim",
  "https://github.com/nvim-tree/nvim-web-devicons",
  "https://github.com/petertriho/nvim-scrollbar",
  "https://github.com/rcarriga/nvim-notify", -- for noice.nvim
  "https://github.com/rebelot/kanagawa.nvim",
  "https://github.com/simeji/winresizer",
  "https://github.com/sindrets/diffview.nvim",
  "https://github.com/stevearc/conform.nvim",
  "https://github.com/stevearc/oil.nvim",
  "https://github.com/tpope/vim-fugitive",
})

-- Plugin's code can be used directly after `add()`
require("kanagawa").setup({
  transparent = true,
})
vim.cmd.colorscheme("kanagawa-dragon")

require("noice").setup()

require("snacks").setup({
  indent = { enabled = true },
  scroll = { enabled = true },
  picker = {
    sources = {
      files = {
        hidden = true,
        no_ignore = true,
      },
    },
  },
})

-- =========================
-- nvim-cmp
-- =========================
local cmp = require("cmp")

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ["<C-j>"] = cmp.mapping.select_next_item(),
    ["<C-k>"] = cmp.mapping.select_prev_item(),
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
  }, {
    { name = "buffer" },
  }),
})

-- =========================
-- LSP
-- =========================
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

vim.lsp.enable("lua_ls")

require("gitgraph").setup({
  git_cmd = "git",
  symbols = {
    merge_commit = "M",
    commit = "*",
  },
  format = {
    timestamp = "%H:%M:%S %d-%m-%Y",
    fields = { "hash", "timestamp", "author", "branch_name", "tag" },
  },
  hooks = {
    -- Check diff of a commit
    on_select_commit = function(commit)
      vim.notify("DiffviewOpen " .. commit.hash .. "^!")
      vim.cmd(":DiffviewOpen " .. commit.hash .. "^!")
    end,
    -- Check diff from commit a -> commit b
    on_select_range_commit = function(from, to)
      vim.notify("DiffviewOpen " .. from.hash .. "~1.." .. to.hash)
      vim.cmd(":DiffviewOpen " .. from.hash .. "~1.." .. to.hash)
    end,
  },
})

require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})

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

vim.g.strip_whitespace_on_save = 0
vim.cmd("highlight ExtraWhitespace guibg=#5f0000 ctermbg=red")

require("lualine").setup()
require("mini.pairs").setup()
require("scrollbar").setup()
require("hlslens").setup()

require("gitsigns").setup({
  current_line_blame = true,
})

require("scrollbar.handlers.search").setup()
require("scrollbar.handlers.gitsigns").setup()

require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "prettierd", "prettier", stop_after_first = true },
    typescript = { "prettierd", "prettier", stop_after_first = true },
    javascriptreact = { "prettierd", "prettier", stop_after_first = true },
    typescriptreact = { "prettierd", "prettier", stop_after_first = true },
    css = { "stylelint", "prettierd", "prettier" },
    scss = { "stylelint", "prettierd", "prettier" },
    html = { "prettierd", "prettier", stop_after_first = true },
  },
  format_on_save = {
    timeout_ms = 3000,
  },
})

require("oil").setup({
  view_options = {
    show_hidden = true,
  },
})

require("which-key").setup()

require("config.filetype")
require("config.options")
require("config.keymaps")
