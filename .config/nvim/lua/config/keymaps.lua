--------------------------------------------------
-- Disable / Break Default Behaviors
--------------------------------------------------
for _, mode in ipairs({ "n", "i", "v" }) do
  vim.keymap.set(mode, "<Up>", "<Nop>")
  vim.keymap.set(mode, "<Down>", "<Nop>")
  vim.keymap.set(mode, "<Left>", "<Nop>")
  vim.keymap.set(mode, "<Right>", "<Nop>")
end

vim.keymap.set("n", "s", "<Nop>")

--------------------------------------------------
-- Basic Motions / Core Behavior Tweaks
--------------------------------------------------
vim.keymap.set("i", "jj", "<ESC>")

vim.keymap.set("n", "<leader>w", "<cmd>w<CR>")
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>")

vim.keymap.set("n", "U", "<C-r>")
vim.keymap.set("n", "Y", "y$")

-- display line, or real line with count
local function smart_move(key, visual_key)
  return function()
    return vim.v.count == 0 and visual_key or key
  end
end

vim.keymap.set("n", "k", smart_move("k", "gk"), { expr = true })
vim.keymap.set("n", "j", smart_move("j", "gj"), { expr = true })

vim.keymap.set("i", "<C-j>", "<C-n>")
vim.keymap.set("i", "<C-k>", "<C-p>")

--------------------------------------------------
-- Editing Efficiency
--------------------------------------------------
vim.keymap.set("n", "<leader>a", "ggVG")

vim.keymap.set("n", "<leader>h", "^")
vim.keymap.set("n", "<leader>l", "$")

vim.keymap.set("n", "ss", "<C-w>s")
vim.keymap.set("n", "sv", "<C-w>v")

vim.keymap.set("n", "sk", "<C-w>k")
vim.keymap.set("n", "sj", "<C-w>j")
vim.keymap.set("n", "sh", "<C-w>h")
vim.keymap.set("n", "sl", "<C-w>l")

--------------------------------------------------
-- UI / Navigation Operations
--------------------------------------------------
vim.keymap.set("n", "gh", "gT")
vim.keymap.set("n", "gl", "gt")

vim.keymap.set("n", "<C-n>", "<cmd>noh<CR>")

vim.keymap.set("n", "<leader>pu", function()
  vim.notify("Updating plugins...")
  vim.pack.update()
end)
