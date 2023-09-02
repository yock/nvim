return {
	'neovim/nvim-lspconfig',
	dependencies = {
		'folke/neodev.nvim',
	},
	config = function()
		solargraph = {
			cmd = { os.getenv('HOME') .. '/.rbenv/shims/solargraph', 'stdio' },
		}
	end
}
