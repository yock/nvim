return {
		'mfussenegger/nvim-dap',
		keys = {
			{ '<Leader>dc', function() require('dap').continue() end },
			{ '<Leader>ds', function() require('dap').step_over() end },
			{ '<Leader>di', function() require('dap').step_into() end },
			{ '<Leader>do', function() require('dap').step_out() end },
			{ '<Leader>db', function() require('dap').toggle_breakpoint() end },
			{ '<Leader>dB', function() require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: ')) end },
			{ '<Leader>dr', function() require('dap').repl.open() end },
			{ '<Leader>dl', function() require('dap').run_last() end },
			{ '<Leader>dL', function() require('dap').list_breakpoints() end },
		},
		dependencies = {
			{
				'suketa/nvim-dap-ruby',
				config = function()
					require('dap-ruby').setup()
				end
			},
			{
				'rcarriga/nvim-dap-ui',
				keys = {
					{ "<leader>du", function() require("dapui").toggle({ }) end, desc = "Dap UI" },
					{ "<leader>de", function() require("dapui").eval() end, desc = "Eval", mode = {"n", "v"} },
				},
				opts = {},
				config = function(_, opts)
					local dap = require("dap")
					local dapui = require("dapui")
					dapui.setup(opts)
					dap.listeners.after.event_initialized["dapui_config"] = function()
					  dapui.open({})
					end
					dap.listeners.before.event_terminated["dapui_config"] = function()
					  dapui.close({})
					end
					dap.listeners.before.event_exited["dapui_config"] = function()
					  dapui.close({})
					end
				end,
			},
		},
	}
