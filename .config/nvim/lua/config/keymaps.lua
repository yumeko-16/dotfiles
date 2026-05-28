vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

--------------------------------------------------
-- Disable / Break Default Behaviors
--------------------------------------------------

for _, mode in ipairs({ "n", "i", "v" }) do
  vim.keymap.set(mode, "<Up>", "<Nop>", { desc = "Disable arrow key" })
  vim.keymap.set(mode, "<Down>", "<Nop>", { desc = "Disable arrow key" })
  vim.keymap.set(mode, "<Left>", "<Nop>", { desc = "Disable arrow key" })
  vim.keymap.set(mode, "<Right>", "<Nop>", { desc = "Disable arrow key" })
end

vim.keymap.set("n", "s", "<Nop>", { desc = "Disable substitute (s)" })

--------------------------------------------------
-- Basic Motions / Core Behavior Tweaks
--------------------------------------------------

vim.keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode" })

vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })

vim.keymap.set("n", "U", "<C-r>", { desc = "Redo" })
vim.keymap.set("n", "Y", "y$", { desc = "Yank to end of line" })

-- display line, or real line with count
local function smart_move(key, visual_key)
  return function()
    return vim.v.count == 0 and visual_key or key
  end
end

vim.keymap.set("n", "k", smart_move("k", "gk"), {
  expr = true,
  desc = "Move up",
})
vim.keymap.set("n", "j", smart_move("j", "gj"), {
  expr = true,
  desc = "Move down",
})

--------------------------------------------------
-- Editing Efficiency
--------------------------------------------------

vim.keymap.set("n", "<leader>a", "ggVG", { desc = "Select all text" })

vim.keymap.set("n", "<leader>h", "^", { desc = "Move to line start" })
vim.keymap.set("n", "<leader>l", "$", { desc = "Move to line end" })

vim.keymap.set("n", "ss", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "sv", "<C-w>v", { desc = "Split window vertically" })

vim.keymap.set("n", "sk", "<C-w>k", { desc = "Move to upper window" })
vim.keymap.set("n", "sj", "<C-w>j", { desc = "Move to lower window" })
vim.keymap.set("n", "sh", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "sl", "<C-w>l", { desc = "Move to right window" })

--------------------------------------------------
-- UI / Navigation Operations
--------------------------------------------------

vim.keymap.set("n", "gh", "gT", { desc = "Go to previous tab" })
vim.keymap.set("n", "gl", "gt", { desc = "Go to next tab" })

vim.keymap.set("n", "<C-n>", "<cmd>noh<CR>", { desc = "Clear search highlight" })

vim.keymap.set("n", "<Leader><Leader>f", "<Plug>(easymotion-bd-f)", {})
vim.keymap.set("n", "<Leader><Leader>w", "<Plug>(easymotion-bd-w)", {})

vim.keymap.set("n", "<leader>pu", function()
  vim.notify("Updating plugins...")
  vim.pack.update()
end)

vim.keymap.set("n", "<leader>fb", function()
  Snacks.picker.buffers()
end, { desc = "Buffers" })

vim.keymap.set("n", "<leader>fc", function()
  Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
end, { desc = "Find Config File" })

vim.keymap.set("n", "<leader>ff", function()
  Snacks.picker.files()
end, { desc = "Find Files" })

vim.keymap.set("n", "<leader>fg", function()
  Snacks.picker.git_files()
end, { desc = "Find Git Files" })

vim.keymap.set("n", "<leader>fp", function()
  Snacks.picker.projects()
end, { desc = "Projects" })

vim.keymap.set("n", "<leader>fr", function()
  Snacks.picker.recent()
end, { desc = "Recent" })

vim.keymap.set("n", "<leader>gl", function()
  require("gitgraph").draw({}, { all = true, max_count = 5000 })
end, { desc = "GitGraph - Draw" })

vim.keymap.set("n", "<leader>e", "<CMD>Oil<CR>", {
  desc = "Open parent directory",
})
