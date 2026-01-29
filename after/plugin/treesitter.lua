require'nvim-treesitter'.setup {
  install_dir = vim.fn.stdpath('data') .. '/site',
  ensure_installed = {
    "typescript",
    "javascript",
    "rust",
    "toml",
    "html",
    "css",
    "scss",
    "cpp",
    "json",
    "hlsl",
    "scala",
    "java",
    "sql",
    "c",
    "lua",
    "vim",
    "vimdoc",
    "zig"

  }
}
