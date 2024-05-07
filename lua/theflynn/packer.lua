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
	--调试treesitter用的, 可以不装
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
            --补全引擎
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	}
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }
    -- cmp的样式
    use 'onsails/lspkind-nvim'

    -- 底栏的样式
    use({
        "NTBBloodbath/galaxyline.nvim",
        -- your statusline
        config = function()
            require("galaxyline.themes.eviline")
        end,
        -- some optional icons
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    })

    --copilot
    use {
        "zbirenbaum/copilot.lua",
      --  cmd = "Copilot",
      --  event = "InsertEnter",
      --  config = function()
      --      require("copilot").setup({})
      --  end,
    }
    use {
        "zbirenbaum/copilot-cmp",
        after = { "copilot.lua" },
     --  config = function ()
     --      require("copilot_cmp").setup()
     --  end
    }

    -- debuger
    use {
        "rcarriga/nvim-dap-ui",
        requires = {
            {"mfussenegger/nvim-dap"},
            {"nvim-neotest/nvim-nio"}
        }
    }
   -- 此插件为 nvim-dap 添加了虚拟文本支持和nvim-treesitter 用于查找变量定义。
    use 'theHamsta/nvim-dap-virtual-text'
    --nvim-dap 的扩展，提供用于启动 go 调试器和调试单个测试的配置。
    use 'leoluz/nvim-dap-go'



end)
