vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>vcf", function() vim.lsp.buf.format() end)
vim.keymap.set("v", "<leader>ys", '"sy')
vim.keymap.set({ "v", "n" }, "<leader>yp", '"sp')

require("config.lazy")
require("set")
require("lsp_setup")
