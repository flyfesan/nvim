return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			local telescope_builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", function()
				local dir = vim.fn.argv(0)
				if dir ~= "" and vim.fn.isdirectory(dir) then
					telescope_builtin.find_files({ cwd = dir })
				else
					telescope_builtin.find_files()
				end
			end, { desc = "Find files with Telescope" })
			vim.keymap.set("n", "<leader>fg", function()
				telescope_builtin.live_grep({ search_dirs = { "%:p" } })
			end, { desc = "Live grep with Telescope" })
			vim.keymap.set("n", "<leader>fb", telescope_builtin.buffers, { desc = "Find in buffers with Telescope" })
			vim.keymap.set("n", "<leader>fh", telescope_builtin.help_tags, { desc = "Show help tags" })
			vim.keymap.set("n", "<leader>F", telescope_builtin.current_buffer_fuzzy_find, { desc = "fuzzy find text" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			-- This is your opts table
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({
							-- even more opts
						}),

						-- pseudo code / specification for writing custom displays, like the one
						-- for "codeactions"
						-- specific_opts = {
						--   [kind] = {
						--     make_indexed = function(items) -> indexed_items, width,
						--     make_displayer = function(widths) -> displayer
						--     make_display = function(displayer) -> function(e)
						--     make_ordinal = function(e) -> string
						--   },
						--   -- for example to disable the custom builtin "codeactions" display
						--      do the following
						--   codeactions = false,
						-- }
					},
				},
			})
			-- To get ui-select loaded and working with telescope, you need to call
			-- load_extension, somewhere after setup function:
			require("telescope").load_extension("ui-select")
		end,
	},
}
