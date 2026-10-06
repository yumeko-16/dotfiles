local function format_with_prettier(bufnr)
  local filename = vim.api.nvim_buf_get_name(bufnr)

  if filename == "" then
    return false
  end

  local input = table.concat(
    vim.api.nvim_buf_get_lines(bufnr, 0, -1, false),
    "\n"
  )

  local result = vim.system({
    "npx",
    "prettier",
    "--stdin-filepath",
    filename,
  }, {
    stdin = input,
  }):wait()

  if result.code ~= 0 then
    vim.notify(
      "Prettier failed:\n" .. result.stderr,
      vim.log.levels.ERROR
    )
    return false
  end

  local lines = vim.split(result.stdout, "\n", {
    plain = true,
    trimempty = false,
  })

  -- Prettierの末尾改行による最後の空要素を削除
  if lines[#lines] == "" then
    table.remove(lines)
  end

  vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, lines)

  return true
end

local function fix_with_stylelint(bufnr)
  local client = vim.lsp.get_clients({
    bufnr = bufnr,
    name = "stylelint_lsp",
  })[1]

  if not client then
    return
  end

  local line_count = vim.api.nvim_buf_line_count(bufnr)
  local last_line = line_count - 1
  local last_line_text =
    vim.api.nvim_buf_get_lines(bufnr, last_line, last_line + 1, false)[1]

  local params = {
    textDocument = vim.lsp.util.make_text_document_params(bufnr),
    range = {
      start = { line = 0, character = 0 },
      ["end"] = {
        line = last_line,
        character = #last_line_text,
      },
    },
    context = {
      only = { "source.fixAll.stylelint" },
      diagnostics = {},
    },
  }

  local response = client:request_sync(
    "textDocument/codeAction",
    params,
    5000,
    bufnr
  )

  if not response or not response.result then
    return
  end

  for _, action in ipairs(response.result) do
    if action.edit then
      vim.lsp.util.apply_workspace_edit(
        action.edit,
        client.offset_encoding
      )
    end

    if action.command then
      client:exec_cmd(action.command)
    end
  end
end

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.css", "*.scss" },
  callback = function(args)
    local bufnr = args.buf

    format_with_prettier(bufnr)
    fix_with_stylelint(bufnr)
  end,
})
