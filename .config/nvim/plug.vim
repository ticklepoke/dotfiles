let g:plug_vim = '~/.local/share/nvim/site/autoload/plug.vim'
if !filereadable(glob(g:plug_vim))
    execute 'silent !curl -fLo ' . g:plug_vim . ' --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')
" UI
Plug 'rafi/awesome-vim-colorschemes'
Plug 'nvim-lualine/lualine.nvim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'romgrk/barbar.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" Git
Plug 'tpope/vim-fugitive'
Plug 'sindrets/diffview.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'APZelos/blamer.nvim'

" LSP
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
Plug 'windwp/nvim-autopairs'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'

" Completion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'saadparwaiz1/cmp_luasnip' 

" LateX
Plug 'lervag/vimtex'

" Snippets
Plug 'L3MON4D3/LuaSnip' 
Plug 'rafamadriz/friendly-snippets' 
"Plug 'SirVer/ultisnips'

" Diagnostics
Plug 'folke/trouble.nvim'

" File management
Plug 'airblade/vim-rooter'
"Plug 'preservim/nerdtree'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'

" Misc
Plug 'preservim/nerdcommenter'
Plug 'petertriho/nvim-scrollbar'
Plug 'lewis6991/impatient.nvim'

" Which key
Plug 'folke/which-key.nvim'

call plug#end()

