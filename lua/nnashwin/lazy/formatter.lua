return {
	"mhartington/formatter.nvim",
	version = "*",
	config = function(_)
		local util = require("formatter.util")

		local prettier = function()
			return {
				exe = "prettier",
				args = { "--stdin-filepath", vim.fn.shellescape(vim.api.nvim_buf_get_name(0)), "--single-quote" },
				stdin = true,
			}
		end

		local yapf = function()
			return {
				exe = "yapf",
				stdin = true,
			}
		end

		local gofmt = function()
			return {
				exe = "gofmt",
				stdin = true,
			}
		end

		local pg_format = function()
			return {
				exe = "pg_format --inplace -",
				stdin = true,
			}
		end

		require("formatter").setup({
			-- Enable or disable logging
			logging = true,
			-- Set the log level
			log_level = vim.log.levels.WARN,
			-- All formatter configurations are opt-in
			filetype = {
				-- Formatter configurations for filetype "lua" go here
				-- and will be executed in order
				lua = {
					-- "formatter.filetypes.lua" defines default configurations for the
					-- "lua" filetype
					require("formatter.filetypes.lua").stylua,

					-- You can also define your own configuration
					function()
						-- Supports conditional formatting
						if util.get_current_buffer_file_name() == "special.lua" then
							return nil
						end

						-- Full specification of configurations is down below and in Vim help
						-- files
						return {
							exe = "stylua",
							args = {
								"--search-parent-directories",
								"--stdin-filepath",
								util.escape_path(util.get_current_buffer_file_path()),
								"--",
								"-",
							},
							stdin = true,
						}
					end,
				},

				go = { gofmt },
				html = { prettier },
				javascript = { prettier },
				javascriptreact = { prettier },
				json = { prettier },
				python = { yapf },
				sql = { pg_format },
				typescript = { prettier },
				typescriptreact = { prettier },
				svelte = { prettier },

				-- Use the special "*" filetype for defining formatter configurations on
				-- any filetype
				["*"] = {
					-- "formatter.filetypes.any" defines default configurations for any
					-- filetype
					require("formatter.filetypes.any").remove_trailing_whitespace,
				},
			},
		})
	end,
}
