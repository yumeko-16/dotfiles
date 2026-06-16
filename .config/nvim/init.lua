vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("config.options")
require("config.keymaps")
require("config.autocmds")
require("config.filetype")

vim.pack.add({
  "https://github.com/MunifTanjim/nui.nvim",
  -- "https://github.com/cocopon/iceberg.vim",
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
  "https://github.com/rcarriga/nvim-notify",
  "https://github.com/rebelot/kanagawa.nvim",
  "https://github.com/simeji/winresizer",
  "https://github.com/sindrets/diffview.nvim",
  "https://github.com/stevearc/conform.nvim",
  "https://github.com/stevearc/oil.nvim",
  "https://github.com/tpope/vim-fugitive",
})

-- Plugin's code can be used directly after `add()`
require("plugins.noice")
require("plugins.snacks")
require("plugins.lualine")
require("plugins.scrollbar")
require("plugins.oil")
require("plugins.easymotion")
require("plugins.mason")
require("plugins.mason-lspconfig")
require("plugins.nvim-cmp")
require("plugins.nvim-lspconfig")
require("plugins.gitsigns")
require("plugins.gitgraph")
require("plugins.mini.pairs")
require("plugins.vim-better-whitespace")
require("plugins.conform")
require("plugins.kanagawa")
-- require("plugins.iceberg")
require("plugins.hlslens")
