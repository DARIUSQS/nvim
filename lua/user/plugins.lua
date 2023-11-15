vim.cmd [[packadd packer.nvim]]
                                                                                                       
return require('packer').startup(function(use)
use 'wbthomason/packer.nvim'
	
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.4',
  requires = { {'nvim-lua/plenary.nvim'} }
}

use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}

use 'nvim-tree/nvim-tree.lua'
use {'cdelledonne/vim-cmake'}
use { 'tpope/vim-surround'}
use {'ful1e5/onedark.nvim'}

use {'tpope/vim-commentary'};

use { "ellisonleao/gruvbox.nvim" }

use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
end}

use 'hrsh7th/nvim-cmp'
use 'hrsh7th/cmp-nvim-lsp'
use({
	"L3MON4D3/LuaSnip",
	tag = "v2.*",	
    run = "make install_jsregexp"
})
use {
  "ray-x/lsp_signature.nvim",
}
use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
}

end)
