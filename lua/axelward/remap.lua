require("axelward.insert_comments")

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>vcf", function() vim.lsp.buf.format() end)
vim.keymap.set("n", "<leader>cn", function() CreateNote() end)
vim.keymap.set("n", "<leader>ct", function() CreateTodo() end)
