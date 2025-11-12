local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not (vim.uv or vim.loop).fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require('pckr').add {
  'f-person/git-blame.nvim',
  {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = "0.1.8",
    requires = { 'nvim-lua/plenary.nvim' }
  },
  {
    'marko-cerovac/material.nvim',
    config = function()
      vim.cmd('colorscheme material')
    end
  },
  -- LSP Support
  'neovim/nvim-lspconfig',
  -- Autocompletion
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  -- Mason
  {
    'williamboman/mason.nvim',
    run = function()
      pcall(vim.api.nvim_command, 'MasonUpdate')
    end,
  },
  'williamboman/mason-lspconfig.nvim',
  {
    'scalameta/nvim-metals',
    requires = {
      'nvim-lua/plenary.nvim',
      'hrsh7th/nvim-cmp',
    }
  },
  {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    as = 'lsp_lines',
    config = function()
      require("lsp_lines").setup()
    end
  },
  {
    'ThePrimeagen/harpoon',
    requires = { 'nvim-lua/plenary.nvim' }
  },
  {
    'sindrets/diffview.nvim',
    config = function()
      require("diffview").setup({
        use_icons = false
      })
    end
  }
}
