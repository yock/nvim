return {
	'neovim/nvim-lspconfig',
	dependencies = {
		'folke/neodev.nvim',
	},
	config = function()
    lspconfig = require('lspconfig')
    lspconfig.rubocop.setup{}
    lspconfig.ruby_ls.setup{}
    lspconfig.tsserver.setup{}
	end
}
