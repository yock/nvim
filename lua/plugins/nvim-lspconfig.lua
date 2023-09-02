return {
	'neovim/nvim-lspconfig',
	config = function()
		solargraph = {
			cmd = { os.getenv('HOME') .. '/.rbenv/shims/solargraph', 'stdio' },
		}
	end
}
