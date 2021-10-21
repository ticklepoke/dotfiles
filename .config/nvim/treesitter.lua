require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "javascript",
    "tsx",
    "toml",
    "json",
    "yaml",
    "dockerfile",
    "latex",
    "lua",
    "rust",
    "typescript",
  }, 
  highlight = {
    enable = true,    
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = false,
  }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.used_by = { "javascript", "typescript.tsx" }
