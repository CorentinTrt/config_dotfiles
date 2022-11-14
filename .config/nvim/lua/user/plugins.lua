local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

-- Popup window for packer
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use "nvim-lua/popup.nvim" -- an implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- useful lua functions used 

  -- [ Theming ]
  use {
    "ellisonleao/gruvbox.nvim",
    requires = { 'tjdevries/colorbuddy.nvim' }
  } -- colorscheme
  use 'nvim-lualine/lualine.nvim' -- status line
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  } -- improve highlights

  -- [ Tabs ]
  use 'akinsho/nvim-bufferline.lua'


  -- [ Cmp ]
  use "hrsh7th/nvim-cmp" -- completion plugin
  use 'hrsh7th/cmp-nvim-lsp'
  use "hrsh7th/cmp-buffer" -- buffer completions
  -- use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lua" -- lua completion

  -- [ Snippets ]
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- [ LSP ]
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "jose-elias-alvarez/null-ls.nvim" -- use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua

  -- [ Helpers ]
  use 'numToStr/Comment.nvim' -- comments common features
  use 'windwp/nvim-ts-autotag' -- auto closing tag
  use 'kyazdani42/nvim-web-devicons' -- file icons

  -- [ File finder / browser ]
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- [ Formatting ]
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client

  -- [ Golang ]
  use 'crispgm/nvim-go'

end)
