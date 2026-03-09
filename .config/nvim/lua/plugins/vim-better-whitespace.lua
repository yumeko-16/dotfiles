return {
  "ntpeters/vim-better-whitespace",

  init = function()
    vim.g.strip_whitespace_on_save = 0
  end,

  config = function()
    vim.cmd("highlight ExtraWhitespace guibg=#5f0000 ctermbg=red")
  end,
}
