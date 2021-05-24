return require('packer').startup(function()

    -- Packer can manage itself as an optional plugin
    use {'wbthomason/packer.nvim', opt = true}

    -- Development
    use {'tpope/vim-dispatch'}
    use {'tpope/vim-fugitive'}
    use {'tpope/vim-surround'}
    use {'tpope/vim-commentary'}
    use {'tpope/vim-rhubarb'}
    use {'tpope/vim-unimpaired'}
    use {'tpope/vim-vinegar'}
    use {'wellle/targets.vim'}
    use {'easymotion/vim-easymotion'}
    use {'liuchengxu/vim-which-key'}
    use {
        'lewis6991/gitsigns.nvim',
        config = function() require('gitsigns').setup() end
    }
    use {
        'TimUntersberger/neogit',
        config = function() require('neogit').setup() end
    }
    use {'unblevable/quick-scope'}
    use {'voldikss/vim-floaterm'}
    -- use {'norcalli/nvim-colorizer.lua'}
    -- use {'kevinhwang91/rnvimr'}
    -- use {'francoiscabrol/ranger.vim'}
    -- use {'rbgrouleff/bclose.vim'}
    -- use {'christoomey/vim-tmux-navigator'}
    -- use {'mhinz/vim-signify'}
    -- use {'radenling/vim-dispatch-neovim' }
    -- use {'phaazon/hop.nvim'}

    -- Color scheme
    use {'kyazdani42/nvim-web-devicons'}
    use {'sainnhe/gruvbox-material'}
    -- use {'joshdick/onedark.vim'}

    -- Testing
    use {'vim-test/vim-test'}
    -- use { "rcarriga/vim-ultest", run = ":UpdateRemotePlugins" }

    -- Telescope
    use {'nvim-lua/plenary.nvim'}
    use {'nvim-lua/popup.nvim'}
    use {'nvim-telescope/telescope.nvim'}
    use {
        'nvim-telescope/telescope-frecency.nvim',
        requires = {'tami5/sql.nvim'},
        config = function()
            require('telescope').load_extension('frecency')
        end
    }
    use {'nvim-telescope/telescope-symbols.nvim'}
    use {'nvim-telescope/telescope-github.nvim'}
    -- use {
    --     'nvim-telescope/telescope-arecibo.nvim',
    --     rocks = {"openssl", "lua-http-parser"}
    -- }
    -- use { 'nvim-telescope/telescope-media-files.nvim' }
    -- use { 'nvim-telescope/telescope-packer.nvim ' }

    -- LSP config
    use {'neovim/nvim-lspconfig'}
    -- use { 'kabouzeid/nvim-lspinstall'}

    -- Completion - use either one of this
    use {'hrsh7th/nvim-compe'}
    -- use { 'nvim-lua/completion-nvim' }

    -- Better LSP experience
    use {'glepnir/lspsaga.nvim'}
    use {'onsails/lspkind-nvim'}
    use {'sbdchd/neoformat'}
    use {'p00f/nvim-ts-rainbow'}
    use {'ray-x/lsp_signature.nvim'}
    use {'szw/vim-maximizer'}
    use {'dyng/ctrlsf.vim'}
    use {'dbeniamine/cheat.sh-vim'}
    use {'kevinhwang91/nvim-bqf'}
    use {'junegunn/vim-peekaboo'}
    use {'pechorin/any-jump.vim'}
    -- use {'gennaro-tedesco/nvim-peekup'}
    -- use {'wellle/context.vim'}
    -- use {'lukas-reineke/indent-blankline.nvim' }
    -- use {'Yggdroot/indentLine' }
    -- use {'beauwilliams/focus.nvim' }
    -- use {'RRethy/vim-illuminate' }
    -- use {'kosayoda/nvim-lightbulb' }

    -- Snippets
    use {'hrsh7th/vim-vsnip'}
    use {'rafamadriz/friendly-snippets'}
    use {'cstrap/python-snippets'}
    use {'ylcnfrht/vscode-python-snippet-pack'}
    use {'xabikos/vscode-javascript'}
    use {'golang/vscode-go'}
    use {'rust-lang/vscode-rust'}
    -- use { 'honza/vim-snippets' }
    -- use { 'SirVer/ultisnips' }
    -- use { 'norcalli/snippets.nvim' }
    -- use { 'nvim-telescope/telescope-snippets.nvim' }

    -- Lua development
    use {'tjdevries/nlua.nvim'}

    -- Plugin development
    use {'thinca/vim-themis'}
    use {'tpope/vim-scriptease'}
    use {'junegunn/vader.vim'}

    -- Better syntax
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    -- use {'nvim-treesitter/playground'}

    -- Dashboard
    use {'glepnir/dashboard-nvim'}

    -- Status line
    use {
        'glepnir/galaxyline.nvim',
        branch = 'main',
        config = function() require 'statusline' end
    }
    -- use { 'romgrk/barbar.nvim' }

    -- Debugging
    use {'puremourning/vimspector'}
    use {'nvim-telescope/telescope-vimspector.nvim'}

    -- Telescope fzf
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}

    -- Project
    use {'nvim-telescope/telescope-project.nvim'}
    use {'airblade/vim-rooter'}
    -- use {'tpope/vim-projectionist'}

    -- Development workflow
    use {'voldikss/vim-browser-search'}
    use {'kkoomen/vim-doge', run = '-> doge#install()'}

    -- Rust
    use {'rust-lang/rust.vim'}

end)
