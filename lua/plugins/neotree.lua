return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	lazy = false,
	config = function()
		require("neo-tree").setup({
			enable_git_status = true,
			enable_diagnostics = true,
			options = {
				theme = "catppuccin",
			},
		})

		vim.keymap.set("n", "<C-b>", ":Neotree filesystem toggle<CR>", { desc = "Show tree file system" })
		vim.keymap.set("n", "<leader>b", ":Neotree focus<CR>", { desc = "focus on file tree" })
		vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none" })
	end,
}
