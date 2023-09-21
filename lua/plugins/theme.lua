return {
	'f-person/auto-dark-mode.nvim',
	config = {
		update_interval = 1000,
		set_dark_mode = function()
			vim.api.nvim_set_option('background', 'dark')
			vim.cmd('colorscheme catppuccin-macchiato')
		end,
		set_light_mode = function()
			vim.api.nvim_set_option('background', 'light')
			vim.cmd('colorscheme catppuccin-latte')
		end,
	},
	dependencies = {
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = {
      color_overrides = {
        latte = {
          pink = "#bd5fa3",
        },
      },
			term_colors = false,
			compile = {
				enabled = true,
				path = vim.fn.stdpath('cache') .. '/catppuccin'
			},
			integrations = {
				treesitter = true,
				dap = {
					enabled = true,
					enabled_ui = true
				}
			}
		}
	}

}
