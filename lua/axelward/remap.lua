require("axelward.insert_comments")

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>vcf", function() vim.lsp.buf.format() end)
vim.keymap.set("n", "<leader>cn", function() CreateNote() end)
vim.keymap.set("n", "<leader>ct", function() CreateTodo() end)
vim.keymap.set("v", "<leader>ys", '"sy')
vim.keymap.set({ "v", "n" }, "<leader>yp", '"sp')
