-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Bind jj to <Esc> in insert mode.
vim.api.nvim_set_keymap("i", "jj", "<ESC>", { noremap = true, silent = true })

-- Save and close the file.
vim.api.nvim_set_keymap("n", "<Leader>w", ":w<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>q", ":q<CR>", { noremap = true, silent = true })

-- Redo
vim.api.nvim_set_keymap("n", "U", "<C-r>", { noremap = true })

-- Select all.
vim.api.nvim_set_keymap("n", "<Leader>a", "ggVG", { noremap = true })

-- Copy from the cursor position to the end of the line.
vim.api.nvim_set_keymap("n", "Y", "y$", { noremap = true })

-- Move up/down by display line.
vim.api.nvim_set_keymap("n", "k", "gk", { noremap = true })
vim.api.nvim_set_keymap("n", "j", "gj", { noremap = true })

-- Scroll
vim.api.nvim_set_keymap("n", "zk", "zt", { noremap = true })
vim.api.nvim_set_keymap("n", "zj", "zb", { noremap = true })

-- Remove search highlight.
vim.api.nvim_set_keymap("n", "<C-n>", ":noh<CR>", { noremap = true })

-- Split window
vim.api.nvim_set_keymap("n", "ss", "<C-w>s", { noremap = true })
vim.api.nvim_set_keymap("n", "sv", "<C-w>v", { noremap = true })

-- Move the cursor between windows.
vim.api.nvim_set_keymap("n", "sk", "<C-w>k", { noremap = true })
vim.api.nvim_set_keymap("n", "sj", "<C-w>j", { noremap = true })
vim.api.nvim_set_keymap("n", "sh", "<C-w>h", { noremap = true })
vim.api.nvim_set_keymap("n", "sl", "<C-w>l", { noremap = true })

-- Tab
vim.api.nvim_set_keymap("n", "gh", "gT", { noremap = true })
vim.api.nvim_set_keymap("n", "gl", "gt", { noremap = true })

-- 上下左右のキーを <Nop> にマッピングする
vim.api.nvim_set_keymap("", "<Up>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("", "<Down>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("", "<Left>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("", "<Right>", "<Nop>", { noremap = true })

-- インサートモードでの上下左右のキーを <Nop> にマッピングする
vim.api.nvim_set_keymap("i", "<Up>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("i", "<Down>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("i", "<Left>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("i", "<Right>", "<Nop>", { noremap = true })

-- ノーマルモードでのsキーを <Nop> にマッピングする
vim.api.nvim_set_keymap("n", "s", "<Nop>", { noremap = true })
