return {
	{
		"rodbit-studios/rodbit-theme.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("rodbit-theme").setup()
			vim.cmd.colorscheme("rodbit-theme")
		end,
	},
}
