local local_plugins = {
	{
		dir = "~/dev/dm-random-table-plugin",
		name = "dm-tables",
		config = function()
			vim.g.dm_tables_log_level = "warn"
			local dm_tables = require("dm-tables")
			vim.keymap.set("v", "<leader>t", function()
				dm_tables.create_table()
			end)
			---
			--- resets this keymapping for my tool
			vim.keymap.set("n", "<C-J>", function()
				dm_tables.show_tables()
			end, { desc = "dm-tables show table" })
		end,
	},
}

return local_plugins
