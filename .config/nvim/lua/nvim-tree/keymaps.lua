require("utils")

map("n", "<C-n>", ":NvimTreeToggle<CR>")

vim.cmd("autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif")
