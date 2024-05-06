-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	-- fuzzy search 
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	-- colorscheme
	use ({ 
		"rose-pine/neovim", 
		as = "rose-pine", 

		config = function()
			--一共有三种配色rose-pine-main、rose-pine-moon、rose-pine-dawn
			vim.cmd('colorscheme rose-pine-main')
		end
	})
	-- 代码高亮highlight
	use (
		'nvim-treesitter/nvim-treesitter', 
		{run = ':TSUpdate'}
	)
	--调试treesitter用的,不会用
	use (
		'nvim-treesitter/playground'
	)
	--鱼叉
	use (
		"theprimeagen/harpoon" 
	)
	--撤销树
	use 'mbbill/undotree'
	--git plugin
	use 'tpope/vim-fugitive'
	--LSP zero
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			--- Uncomment the two plugins below if you want to manage the language servers from neovim
			 {'williamboman/mason.nvim'},
			 {'williamboman/mason-lspconfig.nvim'},

			{'neovim/nvim-lspconfig'},
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	}
    --copilot
   -- use {
   --     "zbirenbaum/copilot.lua",
   --     cmd = "Copilot",
   --     event = "InsertEnter",
   --     config = function()
   --         require("copilot").setup({})
   --     end,
   -- }
   -- use {
   --     "zbirenbaum/copilot-cmp",
   --     after = { "copilot.lua" },
   --     config = function ()
   --         require("copilot_cmp").setup()
   --     end
   -- }
end)
