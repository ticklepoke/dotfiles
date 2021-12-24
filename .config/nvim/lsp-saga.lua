local saga = require 'lspsaga'

saga.init_lsp_saga {
  error_sign = '!',
  warn_sign = '?',
  hint_sign = 'i',
  infor_sign = 'i',
  border_style = "single",
}

local opts = { noremap = true, silent = false }

--vim.api.nvim_set_keymap('n', '<C-j>', ':Lspsaga diagnostic_jump_next<CR>', opts)
vim.api.nvim_set_keymap('n', 'K', ':Lspsaga hover_doc<CR>', opts)
vim.api.nvim_set_keymap('i', '<C-k>', ':Lspsaga signature_help<CR>', opts)
