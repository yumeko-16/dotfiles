vim.api.nvim_create_autocmd("BufEnter", {
  callback = function(args)
    vim.schedule(function()
      pcall(vim.treesitter.start, args.buf)
    end)
  end,
})
