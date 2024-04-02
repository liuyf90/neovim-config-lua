-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- 一个高度可扩展的列表模糊查找器
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    -- 优雅的极简主义配色
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            require("rose-pine").setup()
            vim.cmd('colorscheme rose-pine')
        end
    })

    --并提供一些基本的功能，例如基于 it 的突出显示
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    -- 一套快捷健
    use('ThePrimeagen/harpoon')

    -- 撤销树
    use('mbbill/undotree')
    -- git信息
    use('tpope/vim-fugitive')


    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            { 'williamboman/mason.nvim' }, -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' }, -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'hrsh7th/cmp-buffer' }, -- Optional
            { 'hrsh7th/cmp-path' }, -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' }, -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' }, -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    }
--    use {
--        'nvim-tree/nvim-tree.lua',
--        requires = {
--            'nvim-tree/nvim-web-devicons', -- optional, for file icons
--        },
--        tag = 'nightly' -- optional, updated every week. (see issue #1193)
--    }
    -- Dashboard
--    use {
--        'goolord/alpha-nvim',
--        config = function()
--            require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
--        end
--    }
    use 'kyazdani42/nvim-web-devicons'
    use({
        "NTBBloodbath/galaxyline.nvim",
        -- your statusline
        config = function()
            require("galaxyline.themes.eviline")
        end,
        -- some optional icons
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    })

    --rails plug
    use 'tpope/vim-rails'

    use 'chr4/nginx.vim'
    use 'tpope/vim-surround'
    --copilot
    use 'github/copilot.vim'

end)
