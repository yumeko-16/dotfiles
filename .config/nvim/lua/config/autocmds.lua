local augroup = vim.api.nvim_create_augroup("UserAutocmds", { clear = true })

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.api.nvim_set_hl(0, "Whitespace", {
      fg = "#555555",
      bg = "NONE",
    })
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = {
    "html",
    "javascript",
    "lua",
    "tsx",
    "typescript",
    "css",
  },
  callback = function()
    pcall(vim.treesitter.start)
  end,
})
