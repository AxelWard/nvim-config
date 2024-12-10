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
  ensure_installed = { "lua_ls", "zls" },
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,

  }
})

require("lspconfig").zls.setup({
  settings = {
    zls = {
      path = os.getenv("ZIG_HOME"),
    }
  }
})
-- a zls.json file in the project can fix std lib import failures
-- {
--   "zig_lib_path" : "/home/axel/.zig/zig-linux-x86_64-0.13.0/lib/"
-- }
