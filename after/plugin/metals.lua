local metals = require("metals")
local metals_config = metals.bare_config()

metals_config.settings = {
  showImplicitArguments = true,
  excludedPackages = { "akka.actor.typed.javadsl", "com.github.swagger.akka.javadsl" },
  autoImportBuild = "all",
  serverVersion = '1.5.3',
  serverProperties = { '-Xmx4G' }--, -"Dmetals.loglevel=debug", "-Dmetals.statistics=all", "XX:+UseParallelGC" }
}

metals_config.capabilities = require("cmp_nvim_lsp").default_capabilities()

metals_config.init_options.statusBarProvider = "on"

local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "scala", "sbt", "java" },
  callback = function()
    require("metals").initialize_or_attach(metals_config)
  end,
  group = nvim_metals_group,
})
