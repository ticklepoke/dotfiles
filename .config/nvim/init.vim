source ~/.config/nvim/general.vim
source ~/.config/nvim/plug.vim

source ~/.config/nvim/fugitive.vim
source ~/.config/nvim/nerdtree.vim
source ~/.config/nvim/tabbar.vim
source ~/.config/nvim/vimrooter.vim

luafile ~/.config/nvim/lua/init.lua

if has('termguicolors')
	set termguicolors
endif

colorscheme sonokai
let g:sonokai_transparent_background = 1
set background=dark
set t_Co=256

set mouse=a

set textwidth=0
set wrapmargin=0
set wrap
set linebreak

let g:indentLine_char = '▏'

vnoremap < <gv
vnoremap > >gv
