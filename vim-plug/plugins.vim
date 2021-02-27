let g:coc_global_extensions = ['coc-snippets', 'coc-explorer', 'coc-eslint', 'coc-yaml', 'coc-vimtex', 'coc-tsserver', 'coc-pyright', 'coc-json', 'coc-html', 'coc-css', 'coc-pairs', 'coc-spell-checker']

call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'sheerun/vim-polyglot'
    " Plug 'joshdick/onedark.vim'
    Plug 'ayu-theme/ayu-vim' " or other package manager
    Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': { -> coc#util#install() } }
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'voldikss/vim-floaterm'
    Plug 'liuchengxu/vim-which-key'
    Plug 'mhinz/vim-startify'
    Plug 'preservim/nerdcommenter'
    Plug 'roman/golden-ratio'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'tmhedberg/SimpylFold'
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'mattn/emmet-vim'
    Plug 'dense-analysis/ale'
    Plug 'honza/vim-snippets'
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
    " Plug 'vimpostor/vim-tpipeline'
    " Plug 'Yggdroot/indentLine'

call plug#end()
