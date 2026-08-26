require("cursorcli").setup({
  -- By default this runs `agent` in the current working directory.
  command = { "agent" },
  -- Optional tweaks:
  -- auto_insert = true, -- jump into insert mode after opening
  -- notify = true,      -- use vim.notify for status messages
  -- path = { relative_to_cwd = true },
  -- float = { width = 0.9, height = 0.8, border = "rounded" },
})

vim.keymap.set(
  "n",
  "<leader>af",
  "<Cmd>CursorCliOpenWithLayout float<CR>",
  { desc = "Open Cursor CLI (floating window)" }
)

vim.keymap.set(
  "n",
  "<leader>av",
  "<Cmd>CursorCliOpenWithLayout vsplit<CR>",
  { desc = "Open Cursor CLI (vertical split)" }
)

vim.keymap.set(
  "n",
  "<leader>ah",
  "<Cmd>CursorCliOpenWithLayout hsplit<CR>",
  { desc = "Open Cursor CLI (horizontal split)" }
)

vim.keymap.set("n", "<leader>ac", function()
  require("cursorcli").close()
end, { desc = "Close Cursor CLI terminal" })

vim.keymap.set("n", "<leader>an", function()
  require("cursorcli").new_chat()
end, { desc = "New Cursor CLI chat" })

vim.keymap.set("n", "<leader>as", function()
  require("cursorcli").select_chat()
end, { desc = "Select chat (fuzzy finder with preview)" })

vim.keymap.set("n", "<leader>ar", function()
  require("cursorcli").rename_chat()
end, { desc = "Rename current Cursor CLI chat" })

vim.keymap.set("n", "<leader>aR", function()
  require("cursorcli").resume()
end, { desc = "Resume last Cursor CLI chat" })

vim.keymap.set("n", "<leader>ax", function()
  require("cursorcli").restart()
end, { desc = "Restart Cursor CLI (new session in current chat)" })

vim.keymap.set("n", "<leader>al", function()
  require("cursorcli").list_sessions()
end, { desc = "List Cursor CLI sessions (agent ls)" })

vim.keymap.set("x", "<leader>aa", function()
  require("cursorcli").add_visual_selection()
end, { desc = "Add visual selection to Cursor CLI chat" })

vim.keymap.set("n", "<leader>aA", function()
  require("cursorcli").request_fix_error_at_cursor_in_new_session()
end, { desc = "New session: send error at cursor" })

vim.keymap.set("x", "<leader>aA", function()
  require("cursorcli").add_visual_selection_to_new_session()
end, { desc = "New session: send visual selection" })
