call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'preservim/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'airblade/vim-rooter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'junegunn/goyo.vim'
Plug 'lervag/vimtex'
"Plug 'Yggdroot/indentLine'
"Plug 'lukas-reineke/indent-blankline.nvim', { 'branch': 'version-1'}
Plug 'lukas-reineke/indent-blankline.nvim', { 'branch': 'lua' }
Plug 'ryanoasis/vim-devicons'
call plug#end()

source ~/.config/nvim/general.vim
source ~/.config/nvim/airline.vim
source ~/.config/nvim/nerdcommentor.vim
source ~/.config/nvim/coc.vim
source ~/.config/nvim/fugitive.vim
source ~/.config/nvim/fzf.vim
source ~/.config/nvim/keybindings.vim
source ~/.config/nvim/vimrooter.vim
source ~/.config/nvim/nerdtree.vim

colorscheme sonokai
set mouse=a
set textwidth=0
set wrapmargin=0
set wrap
set linebreak 

"Indent lines
let g:indentLine_char = '▏'

"Use :Prettier to format file
command! -nargs=0 Prettier :CocCommand prettier.formatFile

