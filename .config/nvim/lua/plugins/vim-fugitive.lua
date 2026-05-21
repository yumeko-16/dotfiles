return {
  {
    "tpope/vim-fugitive",
    cmd = { "Git", "Gdiffsplit" },
    config = function()
      vim.api.nvim_create_autocmd("DiffUpdated", {
        callback = function()
          for _, win in ipairs(vim.api.nvim_list_wins()) do
            if vim.api.nvim_win_get_option(win, "diff") then
              vim.api.nvim_win_set_option(win, "wrap", true)
            end
          end
        end,
      })
    end,
  },
}
