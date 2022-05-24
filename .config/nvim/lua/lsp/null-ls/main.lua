local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

local nullls_stripe = require('lspconfig_stripe/null_ls')

null_ls.setup {
  debug = false,
  sources = {
    formatting.prettier.with { extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
    -- All
    null_ls.builtins.formatting.trim_whitespace,

    -- Ruby
    nullls_stripe.diagnostics.rubocop,
    nullls_stripe.formatting.rubocop,

    -- JavaScript, etc.
    nullls_stripe.diagnostics.eslint_d,
    nullls_stripe.formatting.eslint_d,
    nullls_stripe.formatting.prettierd,

  },
    formatting.black.with { extra_args = { "--fast" } },
    -- formatting.yapf,
    formatting.stylua,
    diagnostics.flake8,
  },
}
