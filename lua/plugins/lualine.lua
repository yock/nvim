return {
	"nvim-lualine/lualine.nvim",
	config = {
		options = {
			theme = "catppuccin",
			icons_enabled = true,
		}
	},
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		config = {
			default = true,
		}
	},
	sections = {
		lualine_x = { "overseer" }
	}
}

