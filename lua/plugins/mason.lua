return {
    {
        "mason-org/mason.nvim",
        config = true
    },
	{
		"mason-org/mason-lspconfig.nvim",
        event = { "BufReadPost", "BufNewFile" },
		dependencies = { "neovim/nvim-lspconfig" },
		opts = {},
	}
}
