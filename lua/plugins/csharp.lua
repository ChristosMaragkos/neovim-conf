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
				omnisharp = { enabled = false },
				csharp_ls = { enabled = false },
				marksman = { enabled = false },
				lemminx = {
					settings = {
						xml = {
							schemas = {
								fileMatch = { "*.csproj", "*.props", "*.targets", "*.sln.xml" },
								url = "https://raw.githubusercontent.com/dotnet/msbuild/main/src/MSBuild/Microsoft.Build.xsd",
							},
							validation = { noGrammar = "hint" },
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
