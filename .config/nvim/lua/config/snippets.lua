local templates = {
  ["next-page"] = [[
page.module.scss
page.tsx]],

  ["next-component"] = [[
index.tsx
index.module.scss]],
}

vim.api.nvim_create_user_command("Template", function(opts)
  local template = templates[opts.args]

  if not template then
    vim.notify("Template not found: " .. opts.args, vim.log.levels.ERROR)
    return
  end

  vim.snippet.expand(template)
end, {
  nargs = 1,
  complete = function()
    return vim.tbl_keys(templates)
  end,
})
