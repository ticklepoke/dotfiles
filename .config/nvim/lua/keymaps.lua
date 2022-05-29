require("utils")

-- Hold on to visual mode
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Move text up and down
--map("v", "<A-j>", ":m .+1<CR>==")
--map("v", "<A-k>", ":m .-2<CR>==")
map("v", "p", '"_dP')

-- Visual Block --
-- Move text up and down
--map("x", "J", ":move '>+1<CR>gv-gv")
--map("x", "K", ":move '<-2<CR>gv-gv")
map("x", "<C-j>", ":move '>+1<CR>gv-gv")
map("x", "<C-k>", ":move '<-2<CR>gv-gv")
