vim.keymap.set("", "<Leader>b", function()
  require('gitblame').toggle()
end, {})
