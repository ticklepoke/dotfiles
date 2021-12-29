let g:plug_vim = '~/.local/share/nvim/site/autoload/plug.vim'
if !filereadable(glob(g:plug_vim))
	execute 'silent !curl -fLo ' . g:plug_vim . ' --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')
" UI
Plug 'rafi/awesome-vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'sindrets/diffview.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'APZelos/blamer.nvim'
Plug 'APZelos/blamer.nvim'

" LSP / COC
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'windwp/nvim-autopairs'
Plug 'williamboman/nvim-lsp-installer'

" File management
Plug 'airblade/vim-rooter'
Plug 'preservim/nerdtree'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'glepnir/lspsaga.nvim'

" Misc
Plug 'preservim/nerdcommenter'
call plug#end()
