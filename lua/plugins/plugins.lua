return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ':TSUpdate'
  },
  {
    "nvim-telescope/telescope.nvim", version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    }
  },
  { "neovim/nvim-lspconfig" },
  { "mason-org/mason.nvim", opts = {} },
  { "mason-org/mason-lspconfig.nvim", opts = {} },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  {
    "scalameta/nvim-metals",
    dependencies = {
      'nvim-lua/plenary.nvim',
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-nvim-lsp',
    },
    ft = { "scala", "sbt", "java" }
  },
  {
    'sindrets/diffview.nvim',
    config = function()
      require("diffview").setup({
        use_icons = false
      })
    end
  },
  { "f-person/git-blame.nvim" },
  { "norcalli/nvim-colorizer.lua" }
}
