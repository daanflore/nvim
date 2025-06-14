return {
	-- Collection of colorschemes I want to load
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false, -- force load
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin") -- During setup scheme will be set
		end,
	}
}
