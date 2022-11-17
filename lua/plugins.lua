vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use) 
	use 'preservim/nerdtree'
	use 'junegunn/fzf'
	use 'mattn/emmet-vim'
	use 'ryanoasis/vim-devicons'
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use 'jiangmiao/auto-pairs'
	use 'Yggdroot/indentline'
	use 'neovim/nvim-lspconfig' -- built-in neovim lsp config
	use 'vim-scripts/vim-auto-save' -- auto save
	-- nvim-cmp
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	-- code snippets
	use 'SirVer/ultisnips'
	use 'quangnguyen30192/cmp-nvim-ultisnips'
	-- colorschemes
	use 'morhetz/gruvbox'
	use 'sainnhe/gruvbox-material'
  -- language server(from packer.nvim)
  use 'mfussenegger/nvim-jdtls'
end)
