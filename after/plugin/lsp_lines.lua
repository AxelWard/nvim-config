vim.diagnostic.config({
  virtual_text = false
})
vim.keymap.set("", "<Leader>l", require("lsp_lines").toggle, {})
