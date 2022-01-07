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
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" Git
Plug 'tpope/vim-fugitive'
Plug 'sindrets/diffview.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'APZelos/blamer.nvim'

" LSP
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
Plug 'windwp/nvim-autopairs'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
"Plug 'glepnir/lspsaga.nvim'
"Plug 'nvim-lua/completion-nvim'

" Completion
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" File management
Plug 'airblade/vim-rooter'
Plug 'preservim/nerdtree'
Plug 'nvim-telescope/telescope.nvim'

" Misc
Plug 'preservim/nerdcommenter'
Plug 'nvim-lua/plenary.nvim'
Plug 'petertriho/nvim-scrollbar'


call plug#end()

