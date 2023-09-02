return {
	"nvim-telescope/telescope.nvim",
	keys = {
		{ '<Leader>ff', function() require('telescope.builtin').find_files() end },
		{ '<Leader>fg', function() require('telescope.builtin').live_grep() end },
		{ '<Leader>fb', function() require('telescope.builtin').buffers() end },
		{ '<Leader>fh', function() require('telescope.builtin').help_tags() end },
		{ '<Leader>pp', function() require('telescope.builtin').planets() end },
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
		"sharkdp/fd",
		"nvim-telescope/telescope-fzy-native.nvim",
		"nvim-treesitter/nvim-treesitter",
	}
}
