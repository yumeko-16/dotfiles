require("tree-sitter-manager").setup({
  ensure_installed = {
    "lua",
    "javascript",
    "typescript",
    "tsx",
    "json",
    "html",
    "css",
  },
})
