-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use("nvim-treesitter/playground")

	use { "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {} }

	use {
		'neovim/nvim-lspconfig',
		requires = {
			-- LSP Support
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
	}

	use {
		'nvimdev/dashboard-nvim',
		event = 'VimEnter',
		config = function()
			require('dashboard').setup {
				theme = 'hyper',
				config = {
					week_header = {
						enable = true,
					},
					project = {
						enable = true,
					},
					disable_move = true,
					shortcut = {
						{
							desc = 'Update',
							icon = ' ',
							group = 'Include',
							action = 'Lazy update',
							key = 'u',
						},
						{
							icon = ' ',
							desc = 'Files',
							group = 'Function',
							action = 'Telescope find_files find_command=rg,--ignore,--hidden,--files',
							key = 'f',
						},
						{
							icon = ' ',
							desc = 'Apps',
							group = 'String',
							action = 'Telescope app',
							key = 'a',
						},
						{
							icon = ' ',
							desc = 'dotfiles',
							group = 'Constant',
							action = 'Telescope dotfiles',
							key = 'd',
						},
					},
				},
			}
		end,
		requires = {'nvim-tree/nvim-web-devicons'}
	}
	use ("windwp/nvim-autopairs")
	use ("windwp/nvim-ts-autotag")
	use ('nvim-tree/nvim-web-devicons')
	use ("christoomey/vim-tmux-navigator")
	use ('lewis6991/gitsigns.nvim')
end)
