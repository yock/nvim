return {
		'mfussenegger/nvim-dap',
		config = function()
			local dap = require('dap')
			dap.set_log_level('TRACE')
			dap.adapters.ruby = function(callback, config)
				callback {
					type = 'pipe',
					pipe = "${pipe}",
          executable = {
            command = 'bin/rdbg',
            args = { '-n', '-O', '--sock-path', "${pipe}", '-c', '--', 'bin/rails', 'server' },
          },
          options = {
            source_filetype = 'ruby',
            initialize_timeout_sec = 5,
          }
				}
			end

			dap.configurations.ruby = {
				{
					type = 'ruby',
					name = 'Rails server',
					request = 'attach',
				},
			}
		end,
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
