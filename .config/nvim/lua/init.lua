require("autopairs")
require("barbar.main")
require("cmp.main")
require("diffview.main")
require("gitsigns.main")
require("fugitive.main")
require("icons")
require("lsp")
require("lualine.main")
require("nerdcommentor.main")
require("nvim-tree.main")
require("scrollbar.main")
require("telescope.main")
require("treesitter")
require("trouble.main")
require("vimrooter.main")
require("whichkey")

vim.cmd("colorscheme sonokai")

vim.g.sonokai_transparent_background = 1
vim.opt.background = "dark"
vim.opt.mouse = "a"

vim.opt.textwidth = 0
vim.opt.wrapmargin = 0
vim.opt.wrap = true
vim.opt.linebreak = true

vim.g.indentLine_char = "▏"

require("utils")

map("v", "<", "<gv")
map("v", ">", ">gv")
