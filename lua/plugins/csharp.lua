return {
	{
		"mason-org/mason.nvim",
		opts = {
			registries = {
				"github:mason-org/mason-registry",
				"github:Crashdummyy/mason-registry", -- The one for Roslyn
			},
		},
	},

	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				lemminx = {
					settings = {
						xml = {
							schemas = {
								{
									fileMatch = { "*.csproj", "*.props", "*.targets" },
								},
							},
						},
					},
				},
			},
		},
	},

	{
		"GustavEikaas/easy-dotnet.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
		config = function()
			require("easy-dotnet").setup()
		end,
	},
}
