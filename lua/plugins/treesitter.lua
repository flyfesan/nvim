return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	dependencies = {
		{ "windwp/nvim-ts-autotag" },
	},
	options = function(_, opts)
		return vim.tbl_deep_extend("force", opts, {
			autotag = {
				enable = true,
			},
		})
	end,
	config = function()
		local ts_config = require("nvim-treesitter.configs")
		ts_config.setup({
			ensure_installed = {
				"lua",
				"typescript",
				"rust",
				"vim",
				"vimdoc",
				"query",
				"markdown",
				"markdown_inline",
				"python",
				"html",
			},
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<leader>n",
					node_incremental = "<leader>n",
					scope_incremental = "<leader>s",
					node_decremental = "<leader>m",
				},
			},
		})
	end,
}
