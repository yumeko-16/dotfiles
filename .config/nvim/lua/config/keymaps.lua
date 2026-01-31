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

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
