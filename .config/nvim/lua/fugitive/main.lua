require("utils")
map("n", "<leader>gs", ":G | NERDTreeClose<CR>")

-- Git lens
vim.g.blamer_enabled = 1
vim.g.blamer_delay = 500

-- git gutter
vim.opt.signcolumn = "yes"
