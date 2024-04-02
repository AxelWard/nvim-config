local toggle = true
require("lsp_lines").toggle()

vim.diagnostic.config({
  virtual_text = toggle
})

vim.keymap.set("", "<Leader>l", function()
  require("lsp_lines").toggle()
  vim.diagnostic.config({
    virtual_text = not toggle
  })
  toggle = not toggle
end, {})
