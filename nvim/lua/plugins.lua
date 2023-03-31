local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	-- Package Management
	use("wbthomason/packer.nvim")

	-- Syntax
	use("kylechui/nvim-surround")
	use("windwp/nvim-autopairs")
	use("numToStr/Comment.nvim")
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use("nvim-treesitter/nvim-treesitter-context")
	use("nvim-treesitter/playground")
	use("lukas-reineke/indent-blankline.nvim")
	--use({ "kevinhwang91/nvim-ufo", requires = "kevinhwang91/promise-async" })

	-- LSP
	use("neovim/nvim-lspconfig")
	use("jose-elias-alvarez/null-ls.nvim")

	-- Completion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")

	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")

	use("rafamadriz/friendly-snippets")
	use("onsails/lspkind.nvim")

	-- Navigation
	use({
		"nvim-telescope/telescope.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
			"psiska/telescope-hoogle.nvim",
		},
	})
	use("phaazon/hop.nvim")

	-- git
	use("lewis6991/gitsigns.nvim")

	-- Theme
	use("navarasu/onedark.nvim")
	use("julien/vim-colors-green")

	-- Status Line
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	-- Organisation / Project Management
	use({
		"nvim-neorg/neorg",
		requires = {
			{ "nvim-lua/plenary.nvim" },
			{ "nvim-neorg/neorg-telescope" },
		},
	})

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
