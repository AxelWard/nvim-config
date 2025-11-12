local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = cmp.mapping.preset.insert({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ['<C-Space>'] = cmp.mapping.complete()
})

cmp.setup({
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
  },
  snippit = {
    expand = function(args)
      vim.snippet.expand(args.body)
    end,
  },
  mapping = cmp_mappings
})

require('mason').setup({})
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "zls", "angularls@15.2.1", "ts_ls", "html", "cssls" },
  handlers = {
    function(server_name)
      vim.lsp.enable(server_name)
    end,

  }
})
