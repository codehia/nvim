let g:coc_global_extensions = ['coc-snippets', 'coc-explorer', 'coc-eslint', 'coc-yaml', 'coc-vimtex', 'coc-tsserver', 'coc-pyright', 'coc-json', 'coc-html', 'coc-css', 'coc-pairs', 'coc-spell-checker']

call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'sheerun/vim-polyglot'
    Plug 'joshdick/onedark.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': { -> coc#util#install() } }
    Plug 'airblade/vim-rooter'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'preservim/nerdcommenter'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'tmhedberg/SimpylFold'
    Plug 'liuchengxu/vim-which-key'
    Plug 'mhinz/vim-signify'
    Plug 'mhinz/vim-startify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'mattn/emmet-vim'
    Plug 'honza/vim-snippets'
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'ThePrimeagen/vim-be-good'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'nvim-treesitter/playground'

call plug#end()
