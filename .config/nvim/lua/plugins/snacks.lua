local snacks = require("snacks")

snacks.setup({
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

-- find
vim.keymap.set("n", "<leader>fb", snacks.picker.buffers, { desc = "Buffers" })

vim.keymap.set("n", "<leader>fc", function()
  snacks.picker.files({ cwd = vim.fn.stdpath("config") })
end, { desc = "Find Config File" })

vim.keymap.set("n", "<leader>ff", snacks.picker.files, { desc = "Find Files" })
vim.keymap.set("n", "<leader>fg", snacks.picker.git_files, { desc = "Find Git Files" })
vim.keymap.set("n", "<leader>fp", snacks.picker.projects, { desc = "Projects" })
vim.keymap.set("n", "<leader>fr", snacks.picker.recent, { desc = "Recent" })

-- Grep
vim.keymap.set("n", "<leader>sb", function()
  snacks.picker.lines()
end, { desc = "Buffer Lines" })

vim.keymap.set("n", "<leader>sB", function()
  snacks.picker.grep_buffers()
end, { desc = "Grep Open Buffers" })

vim.keymap.set("n", "<leader>sg", function()
  snacks.picker.grep()
end, { desc = "Grep" })

vim.keymap.set({ "n", "x" }, "<leader>sw", function()
  snacks.picker.grep_word()
end, { desc = "Visual selection or word" })
