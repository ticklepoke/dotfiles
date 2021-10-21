source ~/.config/nvim/general.vim
source ~/.config/nvim/plug.vim
source ~/.config/nvim/nerdtree.vim
source ~/.config/nvim/nerdcommentor.vim
source ~/.config/nvim/tabbar.vim
source ~/.config/nvim/fugitive.vim
source ~/.config/nvim/telescope.vim
source ~/.config/nvim/vimrooter.vim
source ~/.config/nvim/lspcompletion.vim

luafile ~/.config/nvim/lsp.lua
luafile ~/.config/nvim/treesitter.lua
luafile ~/.config/nvim/diffview.lua
luafile ~/.config/nvim/lspsaga.lua
luafile ~/.config/nvim/autopairs.lua

" Colors
if has('termguicolors')
  set termguicolors
endif
let g:sonokai_transparent_background = 1
colorscheme sonokai

set mouse=a

" line break
set textwidth=0
set wrapmargin=0
set wrap
set linebreak

let g:indentLine_char = '▏'

" Better tabbing
vnoremap < <gv
vnoremap > >gv
