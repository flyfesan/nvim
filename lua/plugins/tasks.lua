return {
	"stevearc/overseer.nvim",
	config = function()
		require("overseer").setup()
		vim.keymap.set({ "n", "v", "i" }, "<M-x>", "<cmd>OverseerRun<CR>", { desc = "Runs a certain task" })
		vim.keymap.set({ "n", "v", "i" }, "<C-`>", "<cmd>OverseerToggle<CR>", { desc = "Opens the preview" })
	end,
}
